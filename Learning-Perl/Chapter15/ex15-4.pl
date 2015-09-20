#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.018;
no warnings 'experimental::smartmatch';

sub divisors {
	my $number = shift;
	
	my @divisors = ();
	foreach my $divisor ( 2 .. ($number / 2)) {
		push @divisors, $divisor unless $number % $divisor;
	}

	@divisors;
}

chomp (my $num = <STDIN>);
given ($num) {
	my @empty;
	my @divs = divisors($num);
	when (/\D/) { say "Numeric input only!"; }
	when (@empty ~~ @divs) { say "Number is prime."; }
	default { say "$num has divisors: @divs."; }
}
