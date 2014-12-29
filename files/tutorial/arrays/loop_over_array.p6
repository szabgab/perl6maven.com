#!/usr/bin/env perl6
use v6;

my @fellows = <Foo Bar Baz>;
for @fellows -> $name {
    say $name;
}
