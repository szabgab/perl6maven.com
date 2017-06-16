use v6;

my @a = 'foo', 'bar';
my @x = 'abc', 'def';

my @d;
@d.push: @a, @x;
say @d.perl;       # [["foo", "bar"], ["abc", "def"]]

