use Test::More tests => 30;

use CSS;

my $css = new CSS('grammar' => 'CSS::Grammar::Core');
ok(1, "Created the CSS object ok");


#
# check we can call the various file parsing functions ok
#

eval { $css->read_file('t/css_simple'); };
is($@, '', "eval read_file()");

eval { $css->read_file(['t/css_simple', 't/css_selector_groups']); };
is($@, '', "eval read_file() with multiple files");

eval { $css->read_file('t/fake_file'); };
like($@, qr/^Couldn't open file/, "eval read_file() with non-existent file");

eval { $css->read_file({foo => 'bar'}); };
like($@, qr/^Only scalars/, "eval read_file() with hash ref");

eval { $css->read_file(); };
like($@, qr/^Only scalars/, "eval read_file() with no args");

eval { $css->read_file('t/css_empty'); };
is($@, '', "eval read_file() with empty file");


#
# check we can call the string parsing functions ok
#

eval { $css->read_string('foo { bar: baz; }'); };
is($@, '', "eval read_string()");

eval { $css->read_string(['foo { bar: baz; }', 'doe { rae: mi; }']); };
is($@, '', "eval read_string() with multiple strings");

eval { $css->read_string({foo => 'bar'}); };
is($@, '', "eval read_string() with hash ref");

eval { $css->read_string(''); };
is($@, '', "eval read_string() with blank string");


#
# simple parsing tests
#

$css->purge;

$css->read_file("t/css_simple");
ok(1, "Parsed the simple file ok");

is(scalar(@{$css->{styles}}), 3, "Correct number of rulesets");


#
# PURGE TEST
#

$css->purge();
is(scalar(@{$css->{styles}}), 0, "CSS::purge() worked");


#
# SELECTOR GROUPS
#

$css->read_file("t/css_selector_groups");
my $is_ok = 1;
my @selector_counts = (1,2,2,2,2,2,2,2,3,3);

is(scalar(@{$css->{styles}}), 10, "Correct number of rulesets");

for(@{$css->{styles}}){
	is(scalar(@{$_->{selectors}}), shift @selector_counts, "Correct number of selectors parsed");
}


#
# test for odd rules
#

$css->purge();
$css->read_file("t/css_oddities");
my @props = @{$css->{rulesets}->[0]->{declarations}};
is($props[0]->{simple_value}, 'a', "first property ok");
is($props[1]->{simple_value}, '0', "second property ok");


#
# test atrules and rulesets
#

$css->purge();
$css->read_file("t/css_atrules");

is(scalar(@{$css->{items}}), 3, "Correct number of items");
is(scalar(@{$css->{atrules}}), 2, "Correct number of at rules");
is(scalar(@{$css->{rulesets}}), 1, "Correct number of rulesets");

#use Data::Dumper;
#print Dumper $css;

1;
