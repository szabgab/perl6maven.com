use v6;

my $start = now;

some_call();

my $end = now;

my $elapsed = $end - $start;
say $elapsed.WHAT;  # (Duration)
say $elapsed;       # 0.007443


sub some_call {
	my $x = rand;
	my $y = rand;
	my $z = $x + $y;
}
