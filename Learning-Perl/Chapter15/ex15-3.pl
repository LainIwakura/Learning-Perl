#!/usr/bin/perl

use warnings;
use strict;
use utf8;

use 5.018;
no warnings 'experimental::smartmatch';

for (@ARGV) {
	when (-r -w -x) { say "$_ is readable, writeable, and executable."; }
	when (-r -w _) { say "$_ is readable and writeable."; }
	when (-r -x _) { say "$_ is readable and executable."; } 
	when (-w -x _) { say "$_ is writeable and executable."; }
	when (-r _) { say "$_ is only readable."; }
	when (-w _) { say "$_ is only writeable."; }
	when (-x _) { say "$_ is only executable."; }
}
