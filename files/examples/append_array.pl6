use v6;

my @a = 'foo', 'bar';
say @a.perl;       # ["foo", "bar"]

my @c;
@c.append: @a;
say @c.perl;       # ["foo", "bar"]

@c.append: @a;
say @c.perl;       # ["foo", "bar", "foo", "bar"]
