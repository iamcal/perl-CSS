#!/usr/bin/perl -w

use strict;
use lib '../../';
use Parse::CSS;

my $css = Parse::CSS->new(
                          -source => './wormbase.css',
                          -debug  => 1,
                         );

#my @styles = $css->styles;

foreach my $style ($css->styles){
  print "$style\n";

  my %properties = $style->properties;

  foreach my $prop (keys %properties){
    print "\t$prop\t".$properties{$prop}."\n";
  }
}
