use v6;

class Point {
    has $.x;
    has $.y;
};

my $a = Point.new(x => 23, y => 42);

say $a.WHAT;     # Point()

say $a.x;        # 23


#$a.x = 10;      # Exception: Cannot assign to readonly variable.



