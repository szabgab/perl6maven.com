#!/usr/bin/env perl6
use v6;

my $str = 'ABBA';
say $str.subst('B', 'X');    # AXBA
say $str;                    # ABBA


say $str .= subst('B', 'X'); # AXBA
say $str;                    # AXBA

