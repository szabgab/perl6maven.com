use v6;

my $res = shell("ssh perl6maven.com uptime");
say "Command finished";
say $res;
