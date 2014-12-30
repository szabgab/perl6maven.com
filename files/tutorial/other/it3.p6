use v6;

my $x;
my @a = 1..10, $x, 11..20;
# this I think only fails if the last element is undef
#my @a = 1..10, $x, 11..20, $x;

sub prev_iterator_next (@list){
  my ($prev, $current, $next);

  my @foo = @list;
  $current = @foo.shift;
  $next = @foo.shift;

  gather loop {
    take ($prev, $current, $next);
    $prev = $current;
    $current = $next;
    last if !@foo and !$current;
    $next = @foo.shift;
  }
}

for prev_iterator_next(@a) -> $prev, $curr, $next {
  say ($prev, $curr, $next).perl;
}

# by gfldex on #perl6

# by dolmen on #perl6
# D:\work\gabor\training\common>perl6 -e  "my @a = 0..8; for map { (@a[$_-1], @a[$_], @a[$_+1]) }, 1..(@a-2) -> $prv, $cur, $nxt { ($prv, $cur, $nxt).perl.say  }"

