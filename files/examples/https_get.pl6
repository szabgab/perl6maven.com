use v6;
use LWP::Simple;

my $html = LWP::Simple.new.get("https://httpbin.org/ip");
say $html;
