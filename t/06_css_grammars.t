use Test::More tests => 4;

my ($grammar, $tokens);


#
# CSS 1.0 currently does no tokeing at all
#

use CSS::Grammar::CSS10;
$tokens = CSS::Grammar::CSS10->new()->toke('hello');
is(scalar @{$tokens}, 5, "Token count for CSS::Grammar::CSS10");


#
# CSS 2.0 does a full toke
#

use CSS::Grammar::CSS20;
$tokens = CSS::Grammar::CSS20->new()->toke('hello { world: foo; }');
is(scalar @{$tokens}, 11, "Token count for CSS::Grammar::CSS20");


#
# CSS 2.1 does a full toke
#

use CSS::Grammar::CSS21;
$tokens = CSS::Grammar::CSS21->new()->toke('hello { world: foo; }');
is(scalar @{$tokens}, 11, "Token count for CSS::Grammar::CSS21");


#
# CSS 3.0 currently does no tokeing at all
#

use CSS::Grammar::CSS30;
$tokens = CSS::Grammar::CSS30->new()->toke('hello');
is(scalar @{$tokens}, 5, "Token count for CSS::Grammar::CSS30");
