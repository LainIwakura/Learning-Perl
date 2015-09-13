#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

while (<>) {
	chomp;
	if (/(\s+)\z/) {
		my $capture = $_;
		$capture .= "#";
		say "Caught: $capture";
	}
}
