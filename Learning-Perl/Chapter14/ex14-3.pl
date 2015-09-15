#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

my @places;

print "Give me a string!\n";
chomp(my $input = <STDIN>);
print "What we lookin' for?\n";
chomp(my $needle = <STDIN>);

for (my $pos = -1; ;) {
	$pos = index($input, $needle, $pos + 1);
	last if $pos == -1;
	push @places, $pos;
}

say "Locations of '$needle' in '$input' were: @places";
