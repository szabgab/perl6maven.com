use v6;

class Point {
    has $.x is rw;
    has $.y is rw;

    method reset {
        $.x = 0;
        $.y = 0;
    }
    
    method set_coordinates($x, $y) {
        $.x = $x;
        $.y = $y;
    }
};

my $a = Point.new(x => 23, y => 42);

say $a.x;  # 23

$a.set_coordinates(10, 20);

say $a.x;  # 10
