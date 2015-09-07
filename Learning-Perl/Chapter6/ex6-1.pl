#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.010;

my $name;
my %family_names = (
	'Lain' => 'Iwakura',
	'Haruhi' => 'Suzumiya',
	'Yuki' => 'Nagato',
	'Tsukasa' => 'Hiiragi'
);

say "Enter someone's name!";
chomp($name = <STDIN>);
if (exists($family_names{$name})) {
	say "The last name is: $family_names{$name}!";
} else {
	say "The name was not found in our list!";
}
