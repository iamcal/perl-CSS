use Test::More tests => 4;

use CSS::Parse::Op;

my ($op);

#
# CSS::Parse::Op coverage
#

$op = new CSS::Parse::Op('rule', 'type', 'content');
$op->{ops} = undef;

eval { $op->reduce_empty(); };
is($@, '', "reduce a null op set");

eval { $op->match([], 0); };
like($@, qr/^Don't know how/, "Match against an unknown op type");


$tokens = [{type=>'A'}, {type=>'B'}, {type=>'C'}, {type=>'D'}, {type=>'E'}, {type=>'F'}, {type=>'G'}];
is($op->stack_peek(5, $tokens, 1), 'B C D E F', "stack_peek");

$tokens = [{type=>'A'}, {type=>'B'}, {type=>'C'}];
is($op->stack_peek(5, $tokens, 1), 'B C', "stack_peek");

