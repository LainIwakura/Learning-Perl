#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

while (<>) {
	chomp;
	if (/\b(\w+a)\b/) {
		say "\$1 contains '$1'";
	} else {
		say "No match: |$_|";
	}
}
