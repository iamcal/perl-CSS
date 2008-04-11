#!/usr/bin/perl

use warnings;
use strict;
use lib 'lib';
use CSS;
use CSS::Adaptor::Pretty;
use Data::Dumper;

my $css = new CSS;
$css->read_file('t/css_simple');

my $ad = new CSS::Adaptor::Pretty;
print $ad->format_stylesheet($css);

#print Dumper $css;