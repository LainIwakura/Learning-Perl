#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

foreach my $file (glob '*') {
	if (-l $file) {
		my $realfile = readlink($file);
		say "$file -> $realfile";
	}
}
