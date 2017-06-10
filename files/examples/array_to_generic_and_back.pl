use v6;

my @fruits = 'Apple', 'Banana', 'Peach';
my $s = @fruits;

my @z = $s;
say @z.elems;       # 1
say @z.perl;        # [["Apple", "Banana", "Peach"],]
say @z[0];          # [Apple Banana Peach]
say @z[0][0];       # Apple
say @z[0] eqv $s;   # True
say @z[0] === $s;   # True
say '';

my @a = @$s;
say @a.perl;        # ["Apple", "Banana", "Peach"]
say @a eqv $s;      # True
say @a === $s;      # False
say '';

my @b := @$s;
say @b.perl;        # ["Apple", "Banana", "Peach"]
say @b eqv $s;      # True
say @b === $s;      # True
say '';

my @c = | $s;
say @c.perl;        # ["Apple", "Banana", "Peach"]
say @c eqv $s;      # True
say @c === $s;      # False
say '';

my @d := | $s;
say @d.perl;        # slip("Apple", "Banana", "Peach")
say @d eqv $s;      # False
say @d === $s;      # False
say '';
