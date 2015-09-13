#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

my %files;
foreach (@ARGV) {
	$files{$_} = 1;
}

while (<>) {
	if (/\A## Copyright/) {
		delete $files{$ARGV};
	}
}

@ARGV = sort keys %files;
$^I = ".bak";

while (<>) {
	chomp;
	s/\A(#!.+)\z/$1\n## Copyright (C) 2015 by Lain Iwakura (FishLikeHexagon\@gmail.com)/;
	print "$_\n";
}
