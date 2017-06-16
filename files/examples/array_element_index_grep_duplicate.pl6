use v6;

my @levels = <TRACE DEBUG INFO WARNING ERROR DEBUG FATAL>;
my $res = @levels.grep-index('DEBUG');
say $res;         # 1 5


say $res.WHAT;    # (List)
say $res.elems;   # 2
say $res[0];      # 1
say $res[1];      # 5
