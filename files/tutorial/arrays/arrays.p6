#!/usr/bin/env perl6
use v6;


for "Foo", "Bar", "Baz" -> $name {
    say $name;
}

say "---";

for 1..5 -> $i {
    say $i;
}

say "---";

for 1..Inf -> $i {
    say $i;
    last if $i > 3;
}

say "---";

for 1..* -> $i {
    say $i;
    last if $i > 3;
}

