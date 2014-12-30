#!/usr/bin/env perl6
use v6;

my %phone = 
    "Foo" => 123,
    "Bar" => 456,
;

for keys %phone -> $name {
    say "$name %phone{$name}";
}
