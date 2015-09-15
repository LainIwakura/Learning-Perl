#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

say "Give me a directory name!";
chomp(my $dirname = <STDIN>);

opendir my $dh, $dirname or die "Cannot open dir $dirname: $!";
while (my $name = readdir $dh) {
	say $name;
}

closedir $dh;
