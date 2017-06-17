use v6.c;

my @chars = <b c a d b a a a b>;
say @chars.perl;        # ["b", "c", "a", "d", "b", "a", "a", "a", "b"]

my @sort-of-singles = squish @chars;
say @sort-of-singles.perl;      # ["b", "c", "a", "d", "b", "a", "b"]
