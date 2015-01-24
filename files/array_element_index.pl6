use v6;

my @levels = <TRACE DEBUG INFO WARNING ERROR FATAL>;
my $res = @levels.index('DEBUG');
say $res;       # 6

say $res.WHAT;  # (Int)

