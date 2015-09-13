#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

while (<>) {
	chomp;
	if (/\b(?<word>\w+a)\b/) {
		say "'word' contains '$+{word}'";
	} else {
		say "No match: |$_|";
	}
}
