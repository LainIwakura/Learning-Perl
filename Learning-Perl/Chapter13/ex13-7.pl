#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

if ($ARGV[0] eq '-s') {
	symlink $ARGV[1], $ARGV[2];
} else {
	link $ARGV[0], $ARGV[1];
}

