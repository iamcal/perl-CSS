use Test::More tests => 2;

use CSS::Grammar;


#
# dump a match
#

my $grammar = CSS::Grammar->new();

$grammar->add_lex_rule('multiple_as', 'A*');
$grammar->add_lex_rule('multiple_bs', 'B+');
$grammar->add_lex_rule('base', 'multiple_as+ multiple_bs');
$grammar->set_base('sheet', 'base');

$grammar->add_toke_rule('A', 'a');
$grammar->add_toke_rule('B', 'b');

my $tokens = $grammar->toke('bbb');
is(scalar @{$tokens}, 3, "Token count");

my $tree = $grammar->lex($tokens);
isnt($tree, undef, "Match tree");

#$tree->reduce;
#$tree->scrub;
#
#use Data::Dumper;
#print Dumper $tree;
