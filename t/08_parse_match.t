use Test::More tests => 7;

use CSS::Parse::Match;
use CSS::Grammar;

my ($match, $submatch);


#
# dump a match
#

$token = new CSS::Token('FOO', 'foo!');
$submatch = new CSS::Parse::Match('foolist', []);
$match = new CSS::Parse::Match('base', []);

$submatch->add_matched_token($token);
$match->add_submatch($submatch);

my $dump = $match->dump;

like($dump, qr/base "foo!"/, "Dump content 1");
like($dump, qr/foolist "foo!"/, "Dump content 2");
like($dump, qr/FOO: "foo!"/, "Dump content 3");


#
# test the scrub
#

$match->scrub;

is($match->{op}, undef, "Op scrubbed");
is($match->{tokens}, undef, "Tokens scrubbed");
is($match->{submatches}->[0]->{tokens}, undef, "Submatch scrubbed");


#
# dump an empty match
#

$match = new CSS::Parse::Match('base', []);

is($match->dump, '', "Empty match dump");

