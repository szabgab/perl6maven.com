use v6;

my @numbers = 2, 5, 7;

my @d = map { $_ * 2 }, @numbers;
say @d.perl;          # [4, 10, 14]

my @x = map { $^number * 2 }, @numbers;
say @x.perl;          # [4, 10, 14]

say @numbers.perl;    # [2, 5, 7]
