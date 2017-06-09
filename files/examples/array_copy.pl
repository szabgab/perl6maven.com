use v6;

my @fruits = 'Apple', 'Banana', 'Peach';
my @other = @fruits;

@fruits[1] = 'Mango';

say @fruits.^name;  # Array
say @fruits.perl;   # ["Apple", "Mango", "Peach"]

say @other.^name;   # Array
say @other.perl;    # ["Apple", "Banana", "Peach"]

