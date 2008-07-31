package CSS::Parse::Rule;

use strict;
use warnings;

use CSS::Parse::Op;

sub new {
 	my ($class, $grammar, $name, $rule) = @_;
	my $self = bless {}, $class;

	$self->{error}		= 0;
	$self->{grammar}	= $grammar;
	$self->{name}		= $name;
	$self->{base}		= $name;
	$self->{rule}		= undef;

	$self->parse($rule) if defined $rule;

	return $self;
}

sub parse {
	my ($self, $rule) = @_;

	$self->{error} = 0;
	$self->{rule} = $rule;


	# now try and tokenise the rule
	# we first tokenise it, and *then* split it into alternations,
	# since finding the pipes will be tricky if they occur inside
	# literals or character classes

	my $ops = [];

	$rule =~ s/^\s+//;

	while($rule){
		my $op = undef;

		if ($rule =~ m!^\[!){

			$op = CSS::Parse::Op->new($self, 'group start');
			$rule = substr $rule, 1;

		}elsif ($rule =~ m!^\]!){

			$op = CSS::Parse::Op->new($self, 'group end');
			$rule = substr $rule, 1;

		}elsif ($rule =~ m!^([a-z_][a-z_0-9-]*)!i){

			$op = CSS::Parse::Op->new($self, 'subrule', $1);
			$rule = substr $rule, length $1;

		}elsif ($rule =~ m!^\*!){

			$op = CSS::Parse::Op->new($self, 'rep star');
			$rule = substr $rule, 1;

		}elsif ($rule =~ m!^\+!){

			$op = CSS::Parse::Op->new($self, 'rep plus');
			$rule = substr $rule, 1;

		}elsif ($rule =~ m!^\?!){

			$op = CSS::Parse::Op->new($self, 'rep quest');
			$rule = substr $rule, 1;

		}elsif ($rule =~ m!^\|!){

			$op = CSS::Parse::Op->new($self, 'alt');
			$rule = substr $rule, 1;

		}else{

			$self->{error} = "Couldn't parse op at start of $rule";
			return;
		}

		push @{$ops}, $op;

		$rule =~ s/^\s+//;
	}

	#
	# first we create a base op (of type list)
	# which will represent a list of ops for this rule
	#

	my $base = CSS::Parse::Op->new($self, 'list');
	$base->{ops} = $ops;

	$self->{base} = $base;


	#
	# now we create a node tree from the flat list
	#

	unless ($self->produce_groups($base)){
		# $self->{error} is set in $self->produce_groups()
		return;
	}


	#
	# and perform recursive cleanups
	#

	unless ($base->reduce_alternations()){
		$self->{error} = $base->{error};
		return;
	}

	unless ($base->reduce_repetition()){
		$self->{error} = $base->{error};
		return;
	}

	unless ($base->reduce_empty()){
		$self->{error} = $base->{error};
		return;
	}
}

sub produce_groups {
	my ($self, $base) = @_;

	my $ops = $base->{ops};
	$base->{ops} = [];
	my $current = $base;

	while(my $op = shift @{$ops}){

		if ($op->{type} eq 'group start'){

			my $parent = CSS::Parse::Op->new($self, 'list');
			$parent->{parent} = $current;
			$parent->{ops} = [];

			push @{$current->{ops}}, $parent;

			$current = $parent;

		}elsif ($op->{type} eq 'group end'){

			$current = $current->{parent};

			if (!defined($current)){
				$self->{error} = "End of group found without matching begin in rule $self->{rule}";
				return 0;
			}

		}else{
			push @{$current->{ops}}, $op;
		}
	}

	if ($current ne $base){
		$self->{error} = "Group wasn't closed in rule $self->{rule}";
		return 0;
	}

	return 1;
}

sub match {
	my ($self, $tokens, $token_pc) = @_;

	#
	# given a list of input tokens ($tokens) we
	# try to create a tree of match objects to
	# return, else we return undef
	#

	if ($CSS::TraceParser){
		print "trying to match against rule $self->{name}...\n";
	}

	my $ret = $self->{base}->match($tokens, $token_pc);

	if ($CSS::TraceParser){
		if (defined $ret){
			print "MATCHED $self->{name}!\n";
		}else{
			print "NO MATCH on $self->{name} :(\n";
		}
	}

	$ret->{subrule} = $self->{name} if defined $ret;

	return $ret;
}

sub find_lex_rule {
	my ($self, $rule_name) = @_;

	return $self->{grammar}->find_lex_rule($rule_name);
}

1;

__END__

=head1 NAME

CSS::Parse::Rule - A CSS parser grammar rule

=head1 SYNOPSIS

  use CSS::Parse::Rule;

  my $grammar = new CSS::Grammar;

  my $name = 'my_rule';
  my $rule_body = 'token_a (token_b token_c?)*';

  my $rule = new CSS::Parse::Rule($grammar, $name, $rule_body);

  blah

=head1 DESCRIPTION

This module represents a grammar rule for matching against a token stream.
Operations for this rule are stored as a tree of C<CSS::Parse::Op> objects.

=head1 METHODS

=over

=item C<new( $grammar, $name, $rule_body )>

This constructor returns a C<CSS::Parse::Rule> object with a subtree of C<CSS::Parse::Op> 
objects. The optional rule body is passed to the C<parse()> method which is documented below.

=item C<parse( $rule_body )>

Parses the given rule body into a tree of C<CSS::Parse::Op> objects. The grammar for these
rules is based on the EBNF syntax used in the W3C CSS drafts. The available symbols are:

=over

=item * C<rx/[a-z_][a-z_0-9-]*/i>

Terminals which will match either tokens or other rules

=item * C<[> and C<]>

Grouped sub expressions

=item * C<*>

Zero or more repetition modifier

=item * C<+>

One or more repetition modifier

=item * C<?>

Zero or one (optional) repetition modifier

=item * C<|>

Alternation

=back

=item C<produce_groups( $op )>

Reduces the sub-ops for the given op into groups, based on the start and end 
grouping tokens. You shouldn't have to call this yourself since the C<parse()>
method calls it to build the optree after parsing.

=item C<match( $tokens )>

Performs a match of the rule against the given token stack. Returns a C<CSS::Parse::Match>
object tree on sucess, or undef on failure.

=item C<find_rule( $rule_name )>

Uses the rule's parent grammar to locate a C<CSS::Parse::Rule> object for the named rule,
if one exists (used when recursively submatching).

=back

=head1 INTERNALS

=over

=item C<$rule-E<gt>{error}>

Contains a string indicating the error when an operation fails.

=item C<$rule-E<gt>{grammar}>

A C<CSS::Grammar> object, used for subrule matching lookups.

=item C<$rule-E<gt>{name}>

The name of the rule.

=item C<$rule-E<gt>{base}>

The 'base' op of the rule's optree.

=item C<$rule-E<gt>{rule}>

The original text of the rule body.

=back

=head1 AUTHOR

Copyright (C) 2003-2006, Cal Henderson <cal@iamcal.com>

=head1 SEE ALSO

L<CSS::Grammar>,
L<CSS::Parse::Op>,
L<CSS::Parse::Rule>

=cut
