#!/usr/bin/perl -w

use strict;
use lib '../blib/lib';
use CSS;

my $css = CSS->new(
                          -source => './t.css',
#                          -debug  => 1,
                          -adaptor => 'Test',
                         );

warn "**".$css->adaptor;

my @styles = $css->styles;

foreach my $style ($css->styles){
  print "$style\n";
  my %properties = $style->converts;

  foreach my $prop (keys %properties){
#    print join "\t", ($prop, , $style->convert($prop), $properties{$prop});
    print join "\t", ($prop, , $properties{$prop});
    print "\n";
  }
}
