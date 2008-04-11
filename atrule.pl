#!/usr/bin/perl

use lib 'lib';
use strict;
use warnings;
use CSS;

my $css = new CSS('grammar' => 'Core');

$css->read_file("t/css_atrules");

use Data::Dumper;
print Dumper $css->{atrules};