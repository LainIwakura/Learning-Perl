#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

foreach my $file (@ARGV) {
	if (-o -w -r $file) {
		say "$file is readable, writeable, and owned by me!";
	}
}
