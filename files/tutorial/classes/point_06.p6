use v6;

class Point {
    has $.x is rw;
    has $.y is rw;

    method reset {
        $.x = 0;
        $.y = 0;
    }
};

class Point3D is Point {
    has $.z is rw;
    
    method reset {
        $.z = 0;
        nextsame;
    }
}


my $a = Point3D.new(x => 23, y => 42, z => 12);

say $a.WHAT;
say $a.x;     # 23
say $a.z;     # 12

$a.reset;

say $a.x;  # 0
say $a.z;  # 0
