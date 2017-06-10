use v6;

my @fruits = 'Apple', 'Banana', 'Peach';
my @other = @fruits;
say @other eqv @fruits;  # True
say @other === @fruits;  # False


@fruits[1] = 'Mango';
say @other eqv @fruits;  # False 
say @other.perl;         # ["Apple", "Banana", "Peach"]
say @fruits.perl;        # ["Apple", "Mango", "Peach"]
