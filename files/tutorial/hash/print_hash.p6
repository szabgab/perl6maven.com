#!/usr/bin/env perl6
use v6;

my %user = 
    "fname" => "Foo", 
    "lname" => "Bar",
    "email" => "foo@bar.com",
;

for %user.keys.sort -> $key {
    say "$key  %user{$key}";
}

