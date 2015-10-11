use v6;

my @a = ('foo', 'bar');
say @a.perl;       # ["foo", "bar"]

my @b;
@b.push: @a;
say @b.perl;       # [["foo", "bar"],]

my @c;
@c.append: @a;
say @c.perl;       # ["foo", "bar"]

@b.push: @a;
say @b.perl;       #  [["foo", "bar"], ["foo", "bar"]]

@c.append: @a;
say @c.perl;       # ["foo", "bar", "foo", "bar"]

my @x = ('abc', 'def');

my @d;
@d.push: @a, @x;
say @d.perl;       # [["foo", "bar"], ["abc", "def"]]

my @e;
@e.append: @a, @x;
say @e.perl;       # [["foo", "bar"], ["abc", "def"]]
