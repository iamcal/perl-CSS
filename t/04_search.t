use Test::More tests => 9;

use CSS;
my $css = new CSS;
ok(1, "Created the CSS object ok");

#
# SEARCH TESTS
#

$css->read_file("t/css_simple");
ok(1, "Parsed the simple file ok");

my $ruleset_old = $css->get_style_by_selector('baz');
isa_ok($ruleset_old, 'CSS::Ruleset', "Get CSS::Ruleset CSS->from get_style_by_selector");

my $ruleset = $css->get_ruleset_by_selector('baz');
isa_ok($ruleset, 'CSS::Ruleset', "Get CSS::Ruleset from CSS->get_ruleset_by_selector");

my $ruleset_undef = $css->get_ruleset_by_selector('does-not-exist');
ok(!defined $ruleset_undef, "Get CSS::Ruleset for bad selector");

my $declaration_old = $ruleset->get_property_by_name('color');
isa_ok($declaration_old, 'CSS::Declaration', "Get CSS::Declaration from CSS::Ruleset->get_property_by_name");

my $declaration = $ruleset->get_declaration_by_name('color');
isa_ok($declaration, 'CSS::Declaration', "Get CSS::Declaration object from CSS::Ruleset->get_declaration_by_name");

my $declaration_undef = $ruleset->get_declaration_by_name('does-not-exist');
ok(!defined $declaration_undef, "Get CSS::Declaration for bad property name");

is($declaration->{simple_value}, 'black', "Got declaration value ok");
