use Test::More tests => 14;

use CSS::Grammar;

my $grammar = new CSS::Grammar;
isa_ok($grammar, 'CSS::Grammar', "Created a CSS::Grammar object");


#
# test case sensitivity
#

$grammar->{case_insensitive} = 1;
$grammar->add_toke_rule('ABC', 'ABC');

ok('ABC' =~ $grammar->{toke_rules}->{ABC}, "ABC matches");
ok('abc' =~ $grammar->{toke_rules}->{ABC}, "abc matches");

$grammar->{case_insensitive} = 0;
$grammar->add_toke_rule('DEF', 'DEF');

ok('DEF' =~ $grammar->{toke_rules}->{DEF}, "DEF matches");
ok('def' !~ $grammar->{toke_rules}->{DEF}, "def matches");


#
# test dodgy rules
#

my $ret = $grammar->add_lex_rule('foo', '(bar)');
is($ret, 0, "Add bad lex rule");
like($grammar->{error}, qr/^Couldn't parse op/, "Add bad lex rule");


#
# test toking of unmatched terminals
#

my $tokens = $grammar->toke('x');
is(scalar @{$tokens}, 1, "Number of tokens");
is($tokens->[0]->{content}, 'x', "Token contents");
is($tokens->[0]->{type}, 'MISC', "Token type");


#
# test lexing with an invalid base rule
#

$grammar->{base_rule} = 'fake-rule';
ok(!defined $grammar->lex($tokens), "Lex with invalid base rule");


$grammar->add_lex_rule('base', 'ABC+');
$grammar->{base_rule} = 'base';
ok(!defined $grammar->lex($tokens), "Lex with no base match");


$tokens = $grammar->toke('ABCx');
$match = $grammar->lex($tokens);
is($match->tokens_left, 1, "Tokens left over");
like($grammar->{error}, qr/^Lexer didn't match/, "Tokens left over");

