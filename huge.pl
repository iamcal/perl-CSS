#!/usr/bin/perl -w

use lib 'lib';
use strict;
use Data::Dumper;
use CSS::Grammar::Core;
use CSS::Parse::Rule::Trace;
use Time::HiRes qw(gettimeofday tv_interval);

$|++;


	my $grammar = new CSS::Grammar::Core;
	my ($t0, $t);

	#
	# slurp the file
	#

	print "Slurping file.........";

	$t0 = [gettimeofday];

	local *IN;
	open(IN, 't/css_flickr') or die "Couldn't open file: $!";
	my $source = join '',<IN>;
	close(IN);

	$t = tv_interval($t0, [gettimeofday]);

	print "done (in $t s)\n";

	unless ($source){

		die "Can't read source";
	}

	#
	# tokenize input string
	#

	print "Tokeing input.........";

	#bless $grammar->{lex_rules}->{ruleset}, 'CSS::Parse::Rule::Trace';
	#$grammar->{lex_rules}->{ruleset}->{trace_in} = 1;
	#$grammar->{lex_rules}->{ruleset}->{trace_out} = 1;

	$t0 = [gettimeofday];
	my $tokens = $grammar->toke($source);
	$t = tv_interval($t0, [gettimeofday]);

	print "done (in $t s - ".scalar(@{$tokens})." tokens)\n";

	unless (defined $tokens){

		die "Can't tokenize input string";
	}


	#
	# build a match tree
	#

	print "Building match tree...";

	$t0 = [gettimeofday];
	my $tree = $grammar->lex($tokens);
	$t = tv_interval($t0, [gettimeofday]);

	print "done (in $t s)\n";

	unless (defined $tree){

		die "Can't lex token stream";
	}


	#
	# 'reduce' the match tree into subrules
	#

	print "Reducing tree.........";

	$t0 = [gettimeofday];
	$tree->reduce;
	$t = tv_interval($t0, [gettimeofday]);

	print "done (in $t s)\n";

	unless (defined $tree){

		die "Can't reduce match tree";
	}


	#
	# walk the match tree and generate a sheet
	#

	print "Walking tree..........";

	$t0 = [gettimeofday];
	my $sheet = $grammar->walk($tree);
	$t = tv_interval($t0, [gettimeofday]);

	print "done (in $t s)\n";

	unless (defined $sheet){

		die "Can't walk the match tree";
	}


