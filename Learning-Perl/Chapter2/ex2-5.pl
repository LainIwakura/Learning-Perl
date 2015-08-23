#!/usr/bin/perl

use warnings;
use strict;
use utf8;

my $txt;
my $times;

print "Enter some text:\n";
chomp($txt = <STDIN>);
print "Enter the number of times to repeat:\n";
chomp($times = <STDIN>);

print "$txt\n" x $times
