# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..1\n"; }
END {print "not ok 1\n" unless $loaded;}
use CSS;
$loaded = 1;

######################### End of black magic.

# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):

use strict;
use lib './';
use CSS;

my $css = CSS->new(
          -source=>'./test.css',
           -debug=>0,
           -adaptor=>'AceGraphics',
          );

my @styles = $css->selectors;

print "Tags from this source are:\n", join ' ', @styles,"\n\n";

my $style = $styles[$#styles];
#my $style = '.transcript';

print "Class of tag $style is: ",ref $style,"\n";
print "Attributes of tag $style are:\n";


my @tag_info = $style->attributes;

foreach (@tag_info) {
  print "  $_ : " . $style->value($_) . "\n";
}

print "\nAdding topping to $style...\n";
$style->attribute('topping','soy sauce');

print "\nChanging flavor of $style...\n";
$style->attribute('flavor','butter pecan');

foreach ($style->attributes) {
  print "  $_ : " . $style->value($_) . "\n";
}




print "\nPurging: ", $style, "\n\n";
$css->purge($style);


my @newstyles = $css->selectors;

print "Styles are now:\n";

print join ' ', @newstyles;

print "\n\nLooks good!\n\n";
