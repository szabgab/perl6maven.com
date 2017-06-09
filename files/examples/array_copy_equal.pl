use v6;

my @fruits = 'Apple', 'Banana', 'Peach';
my @other = @fruits;
say @other == @fruits;   # True
say @other === @fruits;  # False


@fruits[1] = 'Mango';
say @other == @fruits;   # True
