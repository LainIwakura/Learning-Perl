#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.018;
no warnings 'experimental::smartmatch';

chomp (my $num = <STDIN>);
given ($num) {
	when (($num % 3) == 0) { say "Fizz"; continue }
	when (($num % 5) == 0) { say "Bin"; continue }
	when (($num % 7) == 0) { say "Sausage"; }
	default { say $num; }
}
