use v6;

my @numbers = 2, 5, 7;
say @numbers.perl;    # Array.new(2, 5, 7)

my @d = @numbers.map( -> $x {$x * 2 } );
say @d.perl;      # Array.new(4, 10, 14)

my @b = @numbers.map( * * 2 );
say @b.perl;     # Array.new(4, 10, 14)

say @numbers.perl;    # Array.new(2, 5, 7)

