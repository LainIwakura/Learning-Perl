#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

sub test_file() {
	my $file = $_[0];
	if (-r -w -x $file) {
		say "File is readable, writeable, and executable!";
	} elsif (-r -w _) {
		say "File is readable and writeable!";
	} elsif (-r -x _) {
		say "File is readable and executable!";
	} elsif (-w -x _) {
		say "File is writeable and executable!";
	} elsif (-r _) {
		say "File is just readable.";
	} elsif (-w _) {
		say "File is just writeable.";
	} elsif (-x _) {
		say "File is just executable.";
	} else {
		say "File isn't anything...";
	}
}

foreach my $file (@ARGV) {
	&test_file($file);
}
