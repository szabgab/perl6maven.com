use v6;
use LWP::Simple;

my $html = LWP::Simple.new.get("http://httpbin.org/ip");
say $html;
