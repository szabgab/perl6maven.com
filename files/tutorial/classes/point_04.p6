use v6;

class Point {
    has $.x is rw;
    has $.y is rw;
    
    has $!weight;
    
    method reset {
        $.x = 0;
        $.y = 0;
        $!weight = 0;
    }
};

my $a = Point.new(x => 23, y => 42, weight => 2);

say $a.x;  # 23
#say $a.weight;  # Exception: Could not locate a method 'weight' to invoke on class 'Point'

$a.reset;

say $a.x;  # 0