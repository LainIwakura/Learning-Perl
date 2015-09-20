#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.018;
no warnings 'experimental::smartmatch';

sub hup_handler  { state $n; say "Caught HUP: ", ++$n }
sub usr1_handler { state $n; say "Caught USR1: ", ++$n }
sub usr2_handler { state $n; say "Caught USR2: ", ++$n }
sub int_handler  { say "\nCaught INT. Exiting."; exit }

say "I am $$";

foreach my $signal (qw(int hup usr1 usr2)) {
	$SIG{uc $signal } = "${signal}_handler";
}

while (1) { sleep 1 };
