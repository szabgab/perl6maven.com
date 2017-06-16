use v6;

my @chars = <b c a d b a a a b>;

my @singles = @chars.unique;

say @singles.perl;    # ["b", "c", "a", "d"]
@singles.perl.say;    # ["b", "c", "a", "d"]
