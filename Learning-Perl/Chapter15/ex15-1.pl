#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

no warnings 'experimental::smartmatch';

my $secret = int (1 + rand 100);

while (1) {
	print "Please guess a number from 1 to 100: ";
	chomp (my $guess = <STDIN>);
	given ($guess) {
		when ($guess =~ /quit|exit|\A\s*\z/i) { say "Good bye! The secret was $secret"; last; }
		when (/\D/) { say "Input was not a number!"; last; }
		when ($guess < 1 || $guess > 100) { say "Input is out of range!"; last; }
		when ($guess < $secret) { say "Too low!"; }
		when ($guess > $secret) { say "Too high!"; }
		when ($guess == $secret) { say "You got it!"; last; }
	}
}
