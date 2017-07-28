use v6;
use LWP::Simple;

my $html = LWP::Simple.new.get("http://httpbin.org/headers", {
    "User-Agent" => "Perl 6 Maven articles",
    "Zone" => "q" }
);
say $html;

