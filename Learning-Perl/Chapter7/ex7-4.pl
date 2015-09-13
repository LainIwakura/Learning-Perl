#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

while (<>) {
	chomp;
	# Probably the best we'll get staying with what we learned in
	# This chapter
	if (/([^a-z]|[A-Z])[a-z]+/) {
		say $_;
	}
}
