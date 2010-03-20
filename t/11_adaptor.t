use Test::More tests => 7;

use CSS;

my $source = '@import test; foo { bar: baz; }';
my $css = new CSS;

$css->parse_string($source);

is($css->output('CSS::Adaptor'), "\@import test;\nfoo { bar: baz }\n", "CSS::Adaptor output");

is($css->output('CSS::Adaptor::Pretty'), "\@import test;\n\nfoo {\n\tbar:\tbaz;\n}\n", "CSS::Adaptor::Pretty output");

my $debug_out = "ATRULE: import=test\nRULESET START\n\tSELECTOR: foo\n\tPROPERTY: bar=baz\nRULESET END\n";

is($css->output('CSS::Adaptor::Debug'), $debug_out, "CSS::Adaptor::Debug output");

$css->set_adaptor('CSS::Adaptor::Debug');

is($css->output(), $debug_out, "set_adaptor() works");

is($css->output('CSS::Grammar'), undef, "non-adaptor module");
is($css->output('CSS::Adaptor::Fake'), undef, "missing adaptor");


$css->purge();
$css->parse_string("foo { reallylongname: quux ; bar: baz; }");

is($css->output('CSS::Adaptor::Pretty'), "foo {\n\treallylongname:\tquux;\n\tbar:\t\tbaz;\n}\n", "CSS::Adaptor::Pretty output (multiple rules)");
