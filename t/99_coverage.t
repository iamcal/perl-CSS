use Test::More tests => 9;

my ($grammar, $sheet, $atrule);

#
# CSS::Grammar::Core coverage
#

use CSS::Grammar::Core;

$grammar = new CSS::Grammar::Core;

$sheet = $grammar->walk();
is(scalar @{$sheet->{items}}, 0, "Walk over undef tree");

$sheet = $grammar->walk({subrule => 'foo'});
is(scalar @{$sheet->{items}}, 0, "Walk over non-stylesheet tree");

$sheet = $grammar->walk({subrule => 'stylesheet', submatches => [ {} ]});
is(scalar @{$sheet->{items}}, 0, "Walk over non subrule'd child");

$sheet = $grammar->walk({subrule => 'stylesheet', submatches => [ {subrule => 'foo' } ]});
is(scalar @{$sheet->{items}}, 0, "Walk over incorrect statement subrule");

$atrule = $grammar->walk_atrule({ matched_text => 'foo' });
is($atrule->{name}, undef, "Bad atrule string name");
is($atrule->{value}, undef, "Bad atrule string value");

my $selectors = [];

$grammar->commit_selector($selectors, '');
is(scalar @{$selectors}, 0, "Add blank selector");

$grammar->commit_selector($selectors, "\nfoo\t");
is(scalar @{$selectors}, 1, "Add real selector (count)");
is($selectors->[0]->{name}, 'foo', "Add real selector (string)");
