#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

if (@ARGV == 0) {
	die "Must supply some files.\n";
}

my $oldest = -1;
foreach my $file (@ARGV) {
	if (-M $file > $oldest) {
		$oldest = int(-M $file);
	}
}

say "The oldest file is: $oldest days old!";
