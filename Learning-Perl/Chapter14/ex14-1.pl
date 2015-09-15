#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

my @nums;
while (<>) {
	push @nums, split;
}
foreach my $num (sort { $a <=> $b } @nums) {
	printf "%20.2f\n", $num;
}
