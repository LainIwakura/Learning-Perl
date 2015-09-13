#!/usr/bin/perl
## Copyright (C) 2015 by Lain Iwakura (FishLikeHexagon@gmail.com)

use warnings;
use strict;
use utf8;

use 5.010;

$^I = ".out";

while (<>) {
	s/fred/Larry/gi;
	print;
}
