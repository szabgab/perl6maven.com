use v6;

class Point {
    has $.x is rw;
    has $.y is rw;
    
    method reset {
        $.x = 0;
        $.y = 0;
    }
};

my $a = Point.new(x => 23, y => 42);

say $a.x;  # 23

$a.reset;

say $a.x;  # 0
