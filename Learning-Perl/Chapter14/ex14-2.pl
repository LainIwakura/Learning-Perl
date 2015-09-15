#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

my %last_name = qw {
	fred flinstone Wilma Flinstone Barney Rubble
	betty rubble Bamm-Bamm Rubble PEBBLES FLINSTONE
};

my @sorted_names = sort {
	"\L$last_name{$a}" cmp "\L$last_name{$b}" or
	"\L$a" cmp "\L$b"
} keys %last_name;

foreach (@sorted_names) {
	say "$_ $last_name{$_}";
}
