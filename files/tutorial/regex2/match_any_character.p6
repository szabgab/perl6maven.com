#!/usr/bin/env perl6
use v6;


my $str = 'The black cat climbed to the green tree.';


if ($str ~~ m/c./) {
    say "Matching '$/'";      # 'ck'
}

my $text = "
The black cat
climebed the greeen tree";

if ($text ~~ m/t./) {
    say "Matching '$/'";     # 't '  with the second ' on a new line
}


if ($text ~~ m/t\N/) {
    say "Matching '$/'";     # 'th'    of the word 'the'
}
