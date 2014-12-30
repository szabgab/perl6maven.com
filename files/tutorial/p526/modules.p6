#!/usr/bin/env perl6
use v6;

# Perl5: package
module Person {
    our $fname;
    our $lname;
}
$Person::fname = "Foo";
$Person::lname = "Bar";



