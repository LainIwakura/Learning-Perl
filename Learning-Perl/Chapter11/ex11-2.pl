#!/usr/bin/perl

use warnings;
use strict;
use DateTime;
use utf8;

use 5.010;

my $dt1 = DateTime->now(time_zone => 'local');
my $dt2 = DateTime->new(
	year => $ARGV[0],
	month => $ARGV[1],
	day => $ARGV[2]
);

my $duration = $dt1 - $dt2;
my @difference = $duration->in_units( qw(years months days) );

printf "%d years, %d months, and %d days\n", @difference; 
