#!/usr/bin/perl

use warnings;
use strict;
use utf8;

my @lines;
chomp(@lines = <STDIN>);
@lines = sort(@lines);
print("@lines");
