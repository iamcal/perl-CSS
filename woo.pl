#!/usr/bin/perl -w

use lib 'lib';
use strict;
use Data::Dumper;
use CSS::Grammar::Core;
use CSS::Grammar::CSS21;
use CSS::Grammar::CSS20;
use CSS::Grammar::CSS10;

$|++;

#$CSS::TraceParser = 1;

my $css = new CSS::Grammar::Core;

#my $tree = $css->parse("foo, bar { bar: 10eM; }");
#my $tree = $css->parse("foo { /*yay*/bar: 10; }");
#my $tree = $css->parse("\@\\000069mport \"foo\";");
my $tree = $css->parse2("\@import/* yay */ \"foo\"/* woo */;");

print Dumper $tree;
exit;
