use Test::More tests => 4;

use CSS;

my $source = '@import test; foo { bar: baz; }';
my $css = new CSS;

$css->parse_string($source);

is($css->output('CSS::Adaptor'), "\@import test;\nfoo { bar: baz }\n", "CSS::Adaptor output");

is($css->output('CSS::Adaptor::Pretty'), "\@import test;\n\nfoo {\n\tbar:\tbaz;\n}\n", "CSS::Adaptor::Pretty output");

is($css->output('CSS::Adaptor::Debug'), "ATRULE: import=test\nRULESET START\n\tSELECTOR: foo\n\tPROPERTY: bar=baz\nRULESET END\n", "CSS::Adaptor::Debug output");


$css->purge();
$css->parse_string("foo { reallylongname: quux ; bar: baz; }");

is($css->output('CSS::Adaptor::Pretty'), "foo {\n\treallylongname:\tquux;\n\tbar:\t\tbaz;\n}\n", "CSS::Adaptor::Pretty output (multiple rules)");
