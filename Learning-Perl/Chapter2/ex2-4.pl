#!/usr/bin/perl

use warnings;
use strict;
use utf8;

my $num1;
my $num2;

print "Enter the first number\n";
chomp($num1 = <STDIN>);
print "Enter the second number\n";
chomp($num2 = <STDIN>);

print $num1 * $num2;
print "\n";
