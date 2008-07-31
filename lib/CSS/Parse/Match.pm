package CSS::Parse::Match;

use strict;
use warnings;
use Time::HiRes qw(gettimeofday tv_interval);

sub new {
	my ($class, $op, $tokens, $token_pc) = @_;

	my $self = bless {}, $class;

	$self->{op}		= $op;
	$self->{submatches}	= [];
	$self->{matched_tokens}	= [];
	$self->{subrule}	= undef;
	$self->{matched_text}	= undef;

	#my $t0 = [gettimeofday];
	#@{$self->{tokens}} = @{$tokens} if ref $tokens eq 'ARRAY';
	#my $t1 = [gettimeofday];
	#print "Copy took ".(1000*tv_interval($t0, $t1))." ms\n";

	$self->{token_pc} = $token_pc;
	$self->{tokens} = $tokens;

	return $self;
}

sub add_submatch {
	my ($self, $submatch) = @_;

	push @{$self->{submatches}}, $submatch;

	$self->{token_pc} = $submatch->{token_pc};
}

sub add_matched_token {
	my ($self, $token) = @_;

	push @{$self->{matched_tokens}}, $token;
}

sub shift_token {
	my ($self) = @_;

	$self->{token_pc}++;
	return $self->{tokens}->[$self->{token_pc}-1];
}

sub unshift_token {
	my ($self) = @_;

	$self->{token_pc}--;

	# we assume here that the token we have to unshift is the one we used to have :)
	#unshift @{$_[0]->{tokens}}, $_[1];
}

sub scrub {
	my ($self) = @_;

	delete $self->{tokens};
	delete $self->{token_pc};
	delete $self->{op};

	for my $submatch (@{$self->{submatches}}){

		$submatch->scrub;
	}
}

sub dump {
	my ($self) = @_;

	return $self->_dump_internal('');
}

sub _dump_internal {
	my ($self, $prefix) = @_;

	my $subs = scalar @{$self->{submatches}};
	my $matches = scalar @{$self->{matched_tokens}};

	return '' unless $subs || $matches;

	my $text = $self->_dump_node_text;

	my $buffer = "$prefix$self->{op} \"$text\" \{\n";

	for my $submatch (@{$self->{submatches}}){

		$buffer .= $submatch->_dump_internal("$prefix\t");
	}

	for my $token (@{$self->{matched_tokens}}){

		$buffer .= "$prefix\t$token->{type}: \"$token->{content}\"\n";
	}

	$buffer .= "$prefix}\n";

	return $buffer;
}

sub _dump_node_text {
	my ($self) = @_;

	my $buffer = '';

	for my $submatch (@{$self->{submatches}}){

		$buffer .= $submatch->_dump_node_text;
	}

	for my $token (@{$self->{matched_tokens}}){

		$buffer .= $token->{content};
	}

	return $buffer;
}

sub reduce {
	my ($self) = @_;

	#
	# first reduce our own submatches
	#

	my $subrules = 0;

	for my $submatch (@{$self->{submatches}}){

		$submatch->reduce;

		if (defined $submatch->{subrule}){

			$subrules++;
		}
	}


	#
	# remove any submatches which don't match any content
	#

	my $old_submatches = $self->{submatches};
	$self->{submatches} = [];

	for my $submatch (@{$old_submatches}){

		if (length $submatch->{matched_text}){

			push @{$self->{submatches}}, $submatch;
		}
	}


	#
	# collect together our output
	#

	$self->{matched_text} = '';

	for my $token (@{$self->{matched_tokens}}){

		$self->{matched_text} .= $token->{content};
	}

	# this line is a bit dodgy as it deletes the original token list which we *may* want
	delete $self->{matched_tokens};

	for my $submatch (@{$self->{submatches}}){

		$self->{matched_text} .= $submatch->{matched_text};
	}


	#
	# now reduce ourselves.
	# if all of our submatches are not subrules, fold them into ourselves
	#

	unless ($subrules){

		my $old_submatches = $self->{submatches};
		$self->{submatches} = [];

		for my $submatch (@{$old_submatches}){

			for my $subsubmatch (@{$submatch->{submatches}}){

				push @{$self->{submatches}}, $subsubmatch;
			}

			#
			# this loop wont find anything as we deleted our own
			# matched token list on line 156 (and we called this
			# method on our submatches already)
			#

			#for my $subtoken (@{$submatch->{matched_tokens}}){
			#	push @{$self->{matched_tokens}}, $subtoken;
			#}
		}
	}
}

sub remove_anon_matches {
	my ($self) = @_;


	#
	# this function remove unnamed match rules - in general we only care about the named stuff,
	# since everything else tends to filler. this make walking the tree a lot simpler
	#


	#
	# first, reduce our children
	#

	for my $submatch (@{$self->{submatches}}){

		$submatch->remove_anon_matches;
	}


	#
	# remove any children which have no name and no children of their own
	#

	my $new_subs = [];

	for my $submatch (@{$self->{submatches}}){

		if (defined $submatch->{subrule}){ 

			push @{$new_subs}, $submatch;

		}else{

			if (scalar @{$submatch->{submatches}}){

				for my $child_of_child (@{$submatch->{submatches}}){

					push @{$new_subs}, $child_of_child;
				}
			}
		}
	}

	$self->{submatches} = $new_subs;

}

sub tokens_left {
	return scalar(@{$_[0]->{tokens}}) - $_[0]->{token_pc};
}

1;

__END__

=head1 NAME

CSS::Parse::Match - A CSS parser match result tree

=head1 SYNOPSIS

  use CSS::Parse::Rule;

  my $rule = new CSS::Parse::Rule(...);
  ...

  my $match = $rule->match($tokens);

=head1 DESCRIPTION

This module represents a tree of matches against a CSS grammar. C<CSS::Parse::Match>
objects are returned by calls to the C<match> method of C<CSS::Parse::Rule> objects.
There should be no reason to create them yourself.

=head1 METHODS

=over

=item C<new( $op, $tokens, $token_pc )>

This constructor returns a C<CSS::Parse::Match> object with it's op set to C<$op>. The token
list passed ((C<$token>) - a reference to an array of C<CSS::Token> objects) has it's reference stored 
internally and a pointer (C<$token_pc>) stored to keep track of which tokens have been matched. This
pointer is modified as the match object performs internal submatches - if the match fails then the 
original token stack (passed to the constructor) is untouched, ready to be passed to the next op.

=item C<add_submatch( $submatch )>

Adds the passed submatch (a C<CSS::Parse::Match> object) to the list of submatches and 
updates the internal token pointer to match that of the submatch.

=item C<add_matched_token( $token )>

Adds the passed token (a C<CSS::Token> object) to the internal list of matched tokens.

=item C<shift_token()> and C<unshift_token( $token )>

Shift and unshift a token (a C<CSS::Token> object) from the internal token stack. This
doesn't actually modify the token stack, but changes the token stack pointer.

=item C<scrub()>

Clears the internal op and token lists (recursively) - these are only needed during 
the match phase and make exploring the objects harder with C<Data::Dumper>.

=item C<dump()>

Returns a simple textual (recursive) representation of the match tree.

=item C<reduce()>

Folds all submatches recursively to remove unnamed match objects. C<CSS::Grammar> objects
will probably want to call this method prior to walking the match tree to make the walk
a lot simpler.

=item C<tokens_left()>

Returns a count of tokens in the stack left to be matched.

=back

=head1 INTERNALS

=over

=item C<$match-E<gt>{op}>

The C<CSS::Parse::Op> object we matched against.

=item C<$match-E<gt>{submatches}>

A reference to an array of submatches (C<CSS::Parse::Match> objects)

=item C<$match-E<gt>{matched_tokens}>

A reference to an array of matched tokens (C<CSS::Token> objects)

=item C<$match-E<gt>{tokens}>

A reference to an array of tokens (C<CSS::Token> objects)

=item C<$match-E<gt>{token_pc}>

An index to the next unmatched token in the C<$match-E<gt>{tokens}> array,

=item C<$match-E<gt>{subrule}>

The name of the subrule which generated this match. This value will be undefined for
inner-rule match ops.

=item C<$match-E<gt>{matched_text}>

A concatenated string of the tokens from this match and all submatches.

=back

=head1 AUTHOR

Copyright (C) 2003-2006, Cal Henderson <cal@iamcal.com>

=head1 SEE ALSO

L<CSS::Parse::Rule>

=cut
