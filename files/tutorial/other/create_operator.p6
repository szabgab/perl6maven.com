#!/usr/bin/env perl6
use v6;


sub infix:<zzz> ( $a, $b ) { return $a+$b };

say 2 zzz 3;

