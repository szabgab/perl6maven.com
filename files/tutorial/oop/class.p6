#!/usr/bin/env perl6
use v6;

class Point {
    has $.x is rw;
    has $.y is rw;
    
    method origo {
        $.x = 0;
        $.y = 0;
    }
}

my $a = Point.new(x => 23, y => 42);
say $a.WHAT;    # Point

say $a.x;
say $a.y;

$a.origo;

say $a.x;
say $a.y;

$a.x = 19; # TODO why can I not ue $a.x(19) here ?

say $a.x;

