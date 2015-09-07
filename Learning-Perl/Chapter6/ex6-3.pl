#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

# First find the longest thing
my $length = -1;

foreach (keys %ENV) {
	$length = length($_) if length($_) > $length;
}

foreach (sort keys %ENV) {
	printf "%-${length}s %s\n", $_, $ENV{$_};
}
