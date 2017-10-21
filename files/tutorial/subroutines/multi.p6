use v6;


multi sub add(Int $a, Int $b) {
    say "Int $a Int $b";
}

multi sub add(Int $a) {
    say "Int $a";
}

multi sub add(Str $a, Str $b) {
    say "Str $a Str $b";
}

# This would be ambiguous as the two "where" clauses match.
# If they are mutually exclusive, then it is ok to have
# several subs with those "where" clauses.

#  multi sub add(Int $a where { $^x % 2 } ) {
    #  say "Int $a  odd number";
#  }

multi sub add(Int $a where { $^x == 3|4 } ) {
    say "Int $a   (3 or 4)";
}

multi sub add(Int $a where { $^x == 1 } ) {
    say "Int $a   (1)";
}

add(2, 3);
for 1..4 -> $n {
    add($n);
}
add("abc", "def");
