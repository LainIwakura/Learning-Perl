#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

while (<>) {
	chomp;
	if (/\b(?<word>\w+a)\b(?<word2>.{0,5})/) {
		say "'word' contains '$+{word}', was followed by: '$+{word2}'";
	} else {
		say "No match: |$_|";
	}
}
