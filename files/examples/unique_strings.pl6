use v6.c;

my @chars = <b c a d b a a a b>;
say @chars.perl;        # ["b", "c", "a", "d", "b", "a", "a", "a", "b"]

my @singles = unique @chars;
say @singles.perl;      # ["b", "c", "a", "d"]

