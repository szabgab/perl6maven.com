#!/usr/bin/env perl6
use v6;

my $s = "The black cat jumped from the green tree";

say index $s, "e";                          # 2
say index $s, "e", 3;                       # 18

say rindex $s, "e";                         # 39
say rindex $s, "e", 38;                     # 38
say rindex $s, "e", 37;                     # 33

