#!/usr/bin/env perl6
use v6;

my @names = ("Foo", "Bar", "Moo");
my $username = prompt "Please type in your name: ";
if $username eq any(@names) {
    say "Welcome $username";
} else {
    say "Unknown user $username";
}

#if ($username eq any(@names)) {
#    say "Welcome $username";
#}

