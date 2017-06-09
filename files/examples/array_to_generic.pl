use v6;

my @fruits = 'Apple', 'Banana', 'Peach';
my $s = @fruits;

say $s.^name;         # Array
say @fruits.^name;    # Array

say $s === @fruits;   # True


@fruits[1] = 'Mango';
say @fruits.perl;     # ["Apple", "Mango", "Peach"]
say $s.perl;          # $["Apple", "Mango", "Peach"]
