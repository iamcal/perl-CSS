#!/usr/bin/perl

use warnings;
use strict;
use Data::Dumper;

my $files = {};

open F, 'MANIFEST' or die "can't open manifest: $!";

while (my $line = <F>){

	chomp $line;

	if ($line =~ /\.pm$/){

		my $source = $line;
		my $dest = $line;

		$dest =~ s!\/|\\!-!g;
		$dest =~ s!\.pm$!!;
		$dest =~ s!^lib-!!;

		$files->{$source} = "$dest.html";
	}
}

close F;


#
# create pods
#

for my $source (keys %{$files}){

	my $dest = $files->{$source};

	print `pod2html --htmldir=docs --htmlroot=. --outfile=docs/$dest --infile=$source --podpath=. --podroot=lib --recurse`;
}

