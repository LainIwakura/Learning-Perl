#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

while (<>) {
	chomp;
	if (/(\S)\1/) {
		say $_;
	}
}