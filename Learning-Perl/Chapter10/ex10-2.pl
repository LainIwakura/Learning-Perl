#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

my $secret = int (1 + rand 100);
my $debug = 1;

while (1) {
	print "Secret is: $secret\n" if $debug // 0;
	print "Please guess a number from 1 to 100: ";
	chomp (my $guess = <STDIN>);
	if ($guess =~ /quit|exit|\A\s*\z/i) {
		print "Goodbye! The number was: $secret\n";
		last;
	} elsif ($guess == $secret) {
		print "You got it!\n";
		last;
	}

	print(($guess < $secret) ? "Too low!\n" : "Too high!\n");
}
