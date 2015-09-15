#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

say "Give me a directory name!";
chomp(my $dirname = <STDIN>);

chdir $dirname or die "Cannot chdir to $dirname: $!";

my @all_files = glob '.* *';
foreach my $file (@all_files) {
	say $file;
}
