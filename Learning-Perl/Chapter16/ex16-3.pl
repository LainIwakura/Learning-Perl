#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.018;
no warnings 'experimental::smartmatch';

if (`date` =~ /\A(Sat|Sun)/) {
	say "go play!";
} else {
	say "go work!";
}
