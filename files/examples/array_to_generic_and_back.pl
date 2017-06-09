use v6;

my @fruits = 'Apple', 'Banana', 'Peach';
my $s = @fruits;

my @z = $s;
say @z.elems;       # 1
say @z.perl;        # [["Apple", "Banana", "Peach"],]
say @z[0];          # [Apple Banana Peach]
say @z[0][0];       # Apple
say @z[0] == $s;    # True
say @z[0] === $s;   # True
say '';

my @a = @$s;
say @a.perl;        # ["Apple", "Banana", "Peach"]
say @a == $s;       # True
say @a === $s;      # False
say '';

my @b := @$s;
say @b.perl;        # ["Apple", "Banana", "Peach"]
say @b == $s;       # True
say @b === $s;      # True
say '';

my @c = | $s;
say @c.perl;        # ["Apple", "Banana", "Peach"]
say @c == $s;       # True
say @c === $s;      # False
say '';

my @d := | $s;
say @d.perl;        # slip("Apple", "Banana", "Peach")
say @d == $s;       # True
say @d === $s;      # False
say '';
