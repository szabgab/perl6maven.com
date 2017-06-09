use v6;

my @fruits = 'Apple', 'Banana', 'Peach';
my $s = @fruits;

say $s[1];         # Banana

for $s -> $v {
    say $v;        # [Apple Banana Peach]
}

say '';

for @$s -> $v {    # Apple
    say $v;        # Banana
}                  # Peach

say '';
for | $s -> $v {   # Apple
    say $v;        # Banana
}                  # Peach
