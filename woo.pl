#!/usr/bin/perl -w

use lib 'lib';
use strict;
use Data::Dumper;
use CSS::Grammar::Core;

$|++;

my $css = new CSS::Grammar::Core;

my $tokens = $css->toke("foo, bar { bar: 10eM; }");
my $tree = $css->lex($tokens);

#die Dumper $tokens;
#print $tree->dump;

#$tree->scrub;
#$tree->reduce;
#print Dumper $tree;
#exit;

$tree->reduce;
my $sheet = $css->walk($tree);

print Dumper $sheet;