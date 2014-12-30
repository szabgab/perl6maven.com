#!/usr/bin/env perl6
use v6;

sub foo($a, :$b) {
    return $a + $b * 2;
}

say foo(b => 2, 3);   # 7
#say foo(4, 9);        # Too many positional parameters passed; got 2 but expected 1

say foo(2);           # 2   Use of uninitialized value in numeric context
#say foo(2, 3, 4);    # Too many positional parameters passed; got 3 but expected 1
