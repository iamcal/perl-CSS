#!/usr/bin/perl

use strict;
use lib './';
use CSS;

my $css = CSS->new(
          -source=>'./das.css',
           -debug=>0,
           -adaptor=>'DasXMLStylesheet',
          );

my @styles = $css->selectors;

#let's do some preprocessing to get all
#the superclasses grouped together
my %category;
foreach my $style (@styles) {
  my ($super,$sub) = $style =~ /^(.+)\.(.+)$/;
  next unless $sub; #misdefined if there's not at least a default subclass
  push @{$category{$super}}, $style;
}


#and now the output
print '<?xml version="1.0" standalone="yes"?>',"\n";
print '<!DOCTYPE DASSTYLE SYSTEM "dasstyle.dtd">',"\n";
print "<DASSTYLE>\n";
print "  <STYLESHEET version=\"0.1\">\n";

foreach my $cat (keys %category){
  print "    <CATEGORY id=\"$cat\">\n";

  foreach my $item (@{$category{$cat}}){
    my ($type) = $item =~ /\.(.+)/;
    print "      <TYPE id=\"$type\">\n";
    print "        <GLYPH>\n";
    print "          <". uc $item->value('glyph').">\n";

    foreach my $a ($item->attributes){
      next if uc $a eq 'GLYPH';
      print "            <".uc $a.">".$item->value($a)."</".uc $a.">\n";
    }

    print "          </".uc $item->value('glyph').">\n";
    print "        </GLYPH>\n";
    print "      </TYPE>\n";
  }

  print "    </CATEGORY>\n";
}

print "  </STYLESHEET>\n";
print "</DASSTYLE>\n";
