package CSS::Grammar;

use strict;
use warnings;

use CSS::Parse::Rule;
use Time::HiRes qw(gettimeofday tv_interval);
use Data::Dumper;

sub new {
	my ($class) = @_;
	my $self = bless {}, $class;

	$self->{toke_rules} = {};
	$self->{toke_order} = [];
	$self->{case_insensitive} = 0;
	$self->{base_rule} = '';
	$self->{lex_rules} = {};
	$self->{error} = '';

	$self->init();

	return $self;
}

sub init {
	my ($self) = @_;
}

sub add_toke_rule {
	my ($self, $name, $rx) = @_;

	$self->{error} = '';

	if ($self->{case_insensitive}){

		$self->{toke_rules}->{$name} = qr/^($rx)/is;
	}else{
		$self->{toke_rules}->{$name} = qr/^($rx)/s;
	}

	push @{$self->{toke_order}}, $name;
}

sub add_lex_rule {
	my ($self, $name, $rule_source) = @_;

	$self->{error} = '';

	my $rule = CSS::Parse::Rule->new($self, $name, $rule_source);

	if ($rule->{error}){
		$self->{error} = $rule->{error};
		return 0;
	}

	$self->{lex_rules}->{$name} = $rule;
	return 1;
}

sub toke {
	my ($self, $input) = @_;

	$self->{error} = '';

	my $tokens = [];

	while(length $input){

		my $matched = 0;

		for my $rule(@{$self->{toke_order}}){

			#my $match_start = [gettimeofday];

			if ($input =~ $self->{toke_rules}->{$rule}){

				#$self->{time_match} += tv_interval($match_start, [gettimeofday]);

				#my $push_start = [gettimeofday];
				push @{$tokens}, CSS::Token->new($rule, $1);
				#$self->{time_push} += tv_interval($push_start, [gettimeofday]);

				#my $substr_start = [gettimeofday];
				$input = substr $input, length $1;
				#$self->{time_substr} += tv_interval($substr_start, [gettimeofday]);

				$matched = 1;

				last;
			}

			#$self->{time_no_match} += tv_interval($match_start, [gettimeofday]);
		}

		unless ($matched){

			push @{$tokens}, CSS::Token->new('MISC', substr $input, 0, 1);
			$input = substr $input, 1;
		}
	}

	return $tokens;
}

sub lex {
	my ($self, $input) = @_;

	$self->{error} = '';

	my $rule = $self->{lex_rules}->{$self->{base_rule}};

	return undef unless defined $rule;

	my $match = $rule->match($input, 0);

	return undef unless defined $match;

	my $leftover = $match->tokens_left;

	if ($leftover){

		$self->{error} = "Lexer didn't match all tokens with base rule ($leftover left over)\n";
	}

	return $match;
}

sub set_base {
	my ($self, $base_rule) = @_;

	$self->{base_rule} = $base_rule;
}

sub find_lex_rule {
	my ($self, $rule_name) = @_;

	return $self->{lex_rules}->{$rule_name};
}

sub dump_tokens {
	my ($self, $tokens) = @_;

	for my $token(@{$tokens}){

		print "$token->{type}\t-> \"$token->{content}\"\n";
	}
}

sub parse {
	my ($self, $input) = @_;

	#
	# this method just ties together a bunch of stuff to turn an input string into a
	# reduced parse tree
	#

	my $tokens = $self->toke($input);
	my $tree = $self->lex($tokens);

	$tree->scrub;
	$tree->reduce;
	$tree->remove_anon_matches;

	return $tree;
}

	
package CSS::Token;

sub new {
	my ($class, $type, $content) = @_;
	my $self = bless {}, $class;

	$self->{type} = $type;
	$self->{content} = $content;

	return $self;
}

1;

__END__

=head1 NAME

CSS::Grammar - A CSS grammar

=head1 SYNOPSIS

  use CSS;

=head1 DESCRIPTION

This module encapsulates a parsing grammar for CSS. It's role 
is to create a match tree from CSS source, via a fixed sequence of 
method calls.

The C<CSS::Grammar> module itself is just a template for the actual 
grammars, which live in the C<CSS::Grammar::*> namespace. As such, 
it cannot be used as a parsing grammar - it doesn't define any toke
or lex rules.

=head1 METHODS

=over

=item C<new()>

This constructor returns a new C<CSS::Grammar> object

=item C<init()>

This method can be overridden by subclasses to populate the toke and lex 
rules for parsing. It is called once per object after the creation phase.

=item C<add_toke_rule( $name, $rx )>

Adds a toke rule to the grammar. See C<CSS::Grammar::Core> for examples.

The C<$name> and C<$rx> arguments are both plain strings, although the 
C<$rx> argument should be a valid regular expression for matching the 
token. There's no need to add the string start anchor or a case 
insensitivity flag.

=item C<add_lex_rule( $name, $rule_source )>

Adds a lexing rule to the grammar. See C<CSS::Grammar::Core> for examples.

=item C<toke( $source_string )>

Tokes the given input string into an array of C<CSS::Token> objects.

=item C<lex( $tokens )>

Lexes the list of C<CSS::Token> objects into a tree of C<CSS::Parse::Match> objects.

=item C<reduce() )>

Reduces the tree of C<CSS::Parse::Match> objects to remove unnamed matches.

=item C<walk( $match_tree )>

Walks the tree of C<CSS::Parse::Match> objects to create a C<CSS::Stylesheet> object.

=item C<set_base( $rule_name )>

Sets the base lexing rule (by name).

=item C<find_lex_rule( $rule_name )>

Returns a lexing rule (by name).

=back

=head1 AUTHOR

Copyright (C) 2003-2006, Cal Henderson <cal@iamcal.com>

=head1 SEE ALSO

L<CSS>

=cut
