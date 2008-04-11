#!/usr/bin/perl -w

use lib 'lib';
use strict;
use Data::Dumper;
use CSS::Simple;

$|++;

my $simple = new CSS::Simple();

#print Dumper $lex;
#die;

#my $tokens = $simple->toke("abc");
my $tokens = $simple->toke("hello");
my $tree = $simple->lex($tokens);

#print Dumper $tokens;
#print Dumper $tree;

$tree->scrub;
$tree->reduce;
print Dumper $tree;
exit;

die "no match" unless defined $tree;
print $tree->dump;
