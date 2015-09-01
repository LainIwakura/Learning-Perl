#!/usr/bin/perl

use warnings;
use strict;
use utf8;

my @names = qw( Yuki Lain Haruhi Yui Chika Rin );
my @nums;

foreach (@nums = <STDIN>) {
	print($names[$_ - 1] ."\n");
}
