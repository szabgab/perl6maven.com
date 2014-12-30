#!/usr/bin/env perl6
use v6;

my %user =
    "fname" => "Foo",
    "lname" => "Bar",
    "email" => "foo@bar.com",
;

for %user.kv -> $key, $value {
    say "$key  $value";
}

