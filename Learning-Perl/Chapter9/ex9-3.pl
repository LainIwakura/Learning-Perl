#!/usr/bin/perl
## Copyright (C) 2015 by Lain Iwakura (FishLikeHexagon@gmail.com)

use warnings;
use strict;
use utf8;

use 5.010;

$^I = ".out";

while (<>) {
	chomp;
	s/Fred/\0/gi;
	s/Wilma/Fred/gi;
	s/\0/Wilma/gi;
	print "$_\n";
}
