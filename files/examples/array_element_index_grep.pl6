use v6;

my @levels = <TRACE DEBUG INFO WARNING ERROR FATAL>;
my $res = @levels.grep-index('DEBUG');
say $res;       # 1


say $res.WHAT;  # (List)

