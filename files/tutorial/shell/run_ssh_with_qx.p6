use v6;

my $out = QX("ssh perl6maven.com uptime");
say "Command finished";
say $out;

