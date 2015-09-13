#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.014} };

foreach (sort keys %modules) {
	print "$_\n";
}
