#!/usr/bin/env perl6
use v6;

# creating hashes
my %h1 = first => '1st', second => '2nd';

if %h1{'first'}.defined {
    say "the value of 'first' is defined";
}
if %h1<second>.defined {
    say "the value of 'second' is defined";
}

if %h1.exists('first') {
    say "the key 'first' exists in h2";
}

say %h1.exists('third') ?? "third exists" !! "third does not exist";

say %h1<first>;
say %h1<second>;

# TODO hash with fixed keys not implemented yet
#my %h2{'a', 'b'} = ('A', 'B');
#say %h2.delete('a');
#say %h2.delete('a');
