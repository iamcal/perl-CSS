package CSS::Parse::Op;

use strict;
use warnings;

use CSS::Parse::Match;
use Data::Dumper;

sub new {
	my ($class, $rule, $type, $content) = @_;

	my $self = bless {}, $class;

	$self->{rule}		= $rule;
	$self->{error}		= 0;
	$self->{type}		= $type;
	$self->{content}	= $content;
	$self->{ops}		= [];

	return $self;
}

sub reduce_alternations {
	my ($self) = @_;

	return 1 unless $self->{type} eq 'list';


	#
	# reduce our own children first
	#

	for my $op (@{$self->{ops}}){

		#
		# if this could actually fail, we'd need to check the result here
		#

		$op->reduce_alternations();
	}


	#
	# now check if we have any alts
	#

	my $alts = 0;
	for my $op (@{$self->{ops}}){
		$alts++ if $op->{type} eq 'alt';
	}

	return 1 unless $alts;


	#
	# we have alts - change our base type and create new alt children
	#

	my $our_ops = $self->{ops};
	$self->{ops} = [];
	$self->{type} = 'alternation';

	my $current = CSS::Parse::Op->new($self->{rule}, 'list');
	$current->{ops} = [];

	for my $op (@{$our_ops}){

		if ($op->{type} eq 'alt'){

			push @{$self->{ops}}, $current;

			$current = CSS::Parse::Op->new($self->{rule}, 'list');
			$current->{ops} = [];

		}else{
			push @{$current->{ops}}, $op;
		}
	}

	push @{$self->{ops}}, $current;

	return 1;
}

sub reduce_repetition {
	my ($self) = @_;

	return 1 unless (($self->{type} eq 'list') || ($self->{type} eq 'alternation'));

	#
	# reduce our own children first
	#

	for my $op (@{$self->{ops}}){
		unless ($op->reduce_repetition()){
			$self->{error} = $op->{error};
			return 0;
		}
	}


	#
	# do it
	#

	my $old_ops = $self->{ops};
	$self->{ops} = [];

	for my $op (@{$old_ops}){

		if ($op->{type} =~ m!^rep (.*)$!){

			my $new = CSS::Parse::Op->new($self->{rule}, 'repeat '.$1);
			$new->{ops} = [];

			my $subject = pop @{$self->{ops}};

			unless (defined $subject){
				$self->{error} = "Repetition operator without subject";
				return 0;
			}

			push @{$new->{ops}}, $subject;

			push @{$self->{ops}}, $new;
		}else{

			push @{$self->{ops}}, $op;
		}
	}

	return 1;
}

sub reduce_empty {
	my ($self) = @_;


	#
	# reduce our own children first
	#

	if (defined($self->{ops})){
		for my $op (@{$self->{ops}}){
			$op->reduce_empty();
		}
	}


	#
	# reduce self?
	#

	if ($self->{type} eq 'list'){
		if (scalar(@{$self->{ops}}) == 1){
			my $child = $self->{ops}->[0];

			for my $key(keys %{$self}){ delete $self->{$key}; }
			for my $key(keys %{$child}){ $self->{$key} = $child->{$key}; }
		}
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

	#print "\tMatching op $self->{type} against token stack ".$self->stack_peek(5, $tokens, $token_pc)."\n";


	#
	# prepare a match object
	#

	my $match = CSS::Parse::Match->new($self->{type}, $tokens, $token_pc);


	#
	# for list types we need to match against each subrule
	# and return a single match object
	#

	if ($self->{type} eq 'list'){

		for my $op(@{$self->{ops}}){

			my $submatch = $op->match($match->{tokens}, $match->{token_pc});

			if (defined $submatch){

				$match->add_submatch($submatch);
			}else{
				return undef;
			}
		}

		return $match;
	}


	#
	# for subrule ops we just need to match against
	# the literal token
	#

	if ($self->{type} eq 'subrule'){

		my $token = $match->shift_token;

		return undef unless defined $token;
		#return undef unless scalar keys %{$token};

		if ($token->{type} eq $self->{content}){

			$match->add_matched_token($token);

			return $match;
		}

		#
		# failed to match the next token - is this
		# a rule we can lex by itself?
		#

		$match->unshift_token($token);

		my $rule = $self->{rule}->find_lex_rule($self->{content});

		if (defined $rule){

			#print "Descending into subrule $self->{content} (".$self->stack_peek(5, $match->{tokens}, $match->{token_pc}).")...\n";

			my $ret = $rule->match($match->{tokens}, $match->{token_pc});

			#print "Returning from subrule $self->{content} (".(defined $ret ? 'MATCHED ('.$self->stack_peek(5, $ret->{tokens}, $ret->{token_pc}).')' : 'no match').")...\n";

			return $ret;
		}


		return undef;
	}


	#
	# optional repeats can only ever match - it's just a case of whether the
	# match alters the token list
	#

	if ($self->{type} eq 'repeat quest'){

		my $subop = $self->{ops}->[0];

		my $submatch = $subop->match($match->{tokens}, $match->{token_pc});

		if (defined $submatch){

			$match->add_submatch($submatch);
		}

		return $match;
	}


	#
	# for alternation ops we try each sub-op in turn until one matches
	#

	if ($self->{type} eq 'alternation'){

		for my $subop (@{$self->{ops}}){

			my $submatch = $subop->match($match->{tokens}, $match->{token_pc});

			if (defined $submatch){

				$match->add_submatch($submatch);

				return $match;
			}
		}
		return undef;
	}


	#
	# for repeat ops we loop matching until we can't
	# match any more, then we check the match count
	#

	if ($self->{type} eq 'repeat plus' || $self->{type} eq 'repeat star'){

		my $subop = $self->{ops}->[0];

		my $match_count = 0;
		my $loop = 1;
		my $last_pc = $match->{token_pc};

		while ($loop){

			$loop = 0;

			my $submatch = $subop->match($match->{tokens}, $match->{token_pc});

			if (defined $submatch){

				$match->add_submatch($submatch);

				my $this_pc = $match->{token_pc};

				if ($this_pc > $last_pc){

					$loop = 1;
				}

				$last_pc = $this_pc;

				$match_count++;
			}
		}

		if ($self->{type} eq 'repeat plus' && !$match_count){

			return undef;
		}

		return $match;
	}



	#
	# fall through
	#

	die "Don't know how to match against a '$self->{type}' op.";
}

sub stack_peek {
	my ($self, $count, $tokens, $token_pc) = @_;

	my @sample;
	push @sample, $_->{type} for grep{ defined } @{$tokens}[$token_pc..$token_pc+$count-1];
	return "@sample";
}

1;
