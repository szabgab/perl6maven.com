use v6;

my @fruits = 'Apple', 'Banana', 'Peach';
my @other := @fruits;

@fruits[1] = 'Mango';
say @fruits.perl;        # ["Apple", "Mango", "Peach"]
say @other.perl;         # ["Apple", "Mango", "Peach"]

say @other eqv @fruits;  # True
say @other === @fruits;  # True
