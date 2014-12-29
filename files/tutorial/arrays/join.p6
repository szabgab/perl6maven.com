#!/usr/bin/env perl6
use v6;

my @fields = <Foo Bar foo@bar.com>;
my $line = join ";", @fields;
say $line;     # Foo;Bar;foo@bar.com

