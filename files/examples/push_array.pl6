use v6;

my @a = 'foo', 'bar';
say @a.perl;       # ["foo", "bar"]

my @b;
@b.push: @a;
say @b.perl;       # [["foo", "bar"],]

@b.push: @a;
say @b.perl;       #  [["foo", "bar"], ["foo", "bar"]]

