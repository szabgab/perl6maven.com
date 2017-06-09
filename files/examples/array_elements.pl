use v6;

my @fruits = 'Apple', 'Banana', 'Peach';
say @fruits.perl;     # ["Apple", "Banana", "Peach"]
say @fruits.^name;    # Array
say @fruits.elems;    # 3

say @fruits[1];       # Banana
say @fruits[*-1];     # Peach
say '';

for @fruits -> $f {   # Apple
    say $f;           # Banana
}                     # Peach
