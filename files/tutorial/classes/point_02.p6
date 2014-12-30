use v6;

class Point {
    has $.x is rw;
    has $.y is rw;
    
};

my $a = Point.new(x => 23, y => 42);

say $a.x;   # 23

$a.x = 10;

say $a.x;   # 10


