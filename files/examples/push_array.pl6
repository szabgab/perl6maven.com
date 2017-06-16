use v6;

my @a = 'foo', 'bar';
say @a.perl;       # ["foo", "bar"]

my @b;
@b.push: @a;
say @b.perl;       # [["foo", "bar"],]

@b.push: @a;
say @b.perl;       #  [["foo", "bar"], ["foo", "bar"]]

my @x = 'abc', 'def';

my @d;
@d.push: @a, @x;
say @d.perl;       # [["foo", "bar"], ["abc", "def"]]

