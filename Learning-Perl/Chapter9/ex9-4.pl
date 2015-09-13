#!/usr/bin/perl
## Copyright (C) 2015 by Lain Iwakura (FishLikeHexagon@gmail.com)

use warnings;
use strict;
use utf8;

use 5.010;

$^I = ".bak";

while (<>) {
	chomp;
	s/\A(#!.+)\z/$1\n## Copyright (C) 2015 by Lain Iwakura (FishLikeHexagon\@gmail.com)/;
	print "$_\n";
}
