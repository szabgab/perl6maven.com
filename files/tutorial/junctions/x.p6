#!/usr/bin/env perl6
use v6;

#my $x = any(1,2,3);
#my $z = any(1);
#say $x - $z;

my @numbers = (1, 2, 3);
my @new = (5, 3);
if (all(@new) > all(@numbers)) {
    say "all bigger";
}

if (any(@new) > all(@numbers)) {
    say "there is at least one bigger";
}


#my $diff = all(@numbers) and none(@new);
#say $diff.perl;




