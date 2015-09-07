#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

my @ruler = ((0 .. 9) x 5);

say "Enter some lines!";
chomp(my @lines = <STDIN>);
say @ruler;
foreach (@lines) {
	printf "%$width" . "s\n", $_;
}
