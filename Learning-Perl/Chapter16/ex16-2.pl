#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.018;
no warnings 'experimental::smartmatch';

open STDOUT, '>', 'ls.out';
open STDERR, '>', 'ls.err';
chdir '/Users/lain/' or die "Can't chdir to directory!: $!";
exec 'ls', '-l';
