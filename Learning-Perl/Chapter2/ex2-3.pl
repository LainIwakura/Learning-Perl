#!/usr/bin/perl

use warnings;
use strict;
use utf8;

## Computes the circumference of a circle
# with user defined radius
# check for negative

my $radius;

print "Please enter a radius:\n";
chomp($radius = <STDIN>);

if ($radius < 0) {
	$radius = 0;
}

print ((2 * 3.141592654) * $radius);
print "\n";
