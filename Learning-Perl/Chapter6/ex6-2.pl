#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

# Read a histogram of words seen (called people because
# test input was using names)
my %people;
chomp(my @lines = <STDIN>);
foreach (@lines) {
	$people{$_}++;
}

# sort the keys and print them out
foreach (sort keys %people) {
	say "$_ => $people{$_}";
}
