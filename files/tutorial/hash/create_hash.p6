#!/usr/bin/env perl6
use v6;

my %user_a = "fname", "Foo", "lname", "Bar";

my %user_b = 
    "fname" => "Foo", 
    "lname" => "Bar",
;

say %user_a{"fname"};
%user_a{"email"} = "foo@bar.com";
say %user_a{"email"};

say %user_b<lname>;

