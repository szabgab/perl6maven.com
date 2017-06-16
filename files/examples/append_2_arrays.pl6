use v6;

my @a = 'foo', 'bar';
my @x = 'abc', 'def';

my @e;
@e.append: @a, @x;
say @e.perl;       # [["foo", "bar"], ["abc", "def"]]
