use v6;

my @numbers = 2, 5, 7;
say @numbers.perl;    # Array.new(2, 5, 7)

my @d = map { $_ * 2 }, @numbers;
say @d.perl;          # Array.new(4, 10, 14)

my @x = map { $^number * 2 }, @numbers;
say @x.perl;          # Array.new(4, 10, 14)

