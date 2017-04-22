#!/usr/bin/env perl6
use v6;

say 4      == 4 ?? "TRUE" !! "FALSE";     # TRUE
say 3      == 4 ?? "TRUE" !! "FALSE";     # FALSE
say "3.0"  == 3 ?? "TRUE" !! "FALSE";     # TRUE
say "3.0"  eq 3 ?? "TRUE" !! "FALSE";     # FALSE
say 13     >  2 ?? "TRUE" !! "FALSE";     # TRUE
say 13     gt 2 ?? "TRUE" !! "FALSE";     # FALSE
#say "foo"  == "" ?? "TRUE" !! "FALSE";    # Exception
say "foo"  eq "" ?? "TRUE" !! "FALSE";    # FALSE
#say "foo"  == "bar" ?? "TRUE" !! "FALSE"; # Exception
say "foo"  eq "bar" ?? "TRUE" !! "FALSE"; # FALSE

