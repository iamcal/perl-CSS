use Test::More tests => 3;

use CSS::Grammar::Core;
use CSS::Parse::Rule::Trace;


my $source = '@import test; foo { bar: baz; }';
my $grammar = new CSS::Grammar::Core;

my $rule = $grammar->find_lex_rule('ruleset');
bless $rule, 'CSS::Parse::Rule::Trace';
$rule->{trace_in} = 1;
$rule->{trace_out} = 1;

my $tokens = $grammar->toke($source);
isnt($tokens, undef, "Input toked");

my $tree = $grammar->lex($tokens);
isnt($tree, undef, "Input lexed");

$rule->{trace_in} = 0;
$rule->{trace_out} = 0;

$tree = $grammar->lex($tokens);
isnt($tree, undef, "Input lexed (again)");
