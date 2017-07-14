use v6;
use URI::Escape;
use LWP::Simple;

my %params = 
   name     => "Larry Wall",
   language => "Perl",
   math     => "19+23=42",
;

my $url-params = (map { "{.key}={uri-escape(.value)}" }, %params).join('&');

my $html = LWP::Simple.new.get("http://httpbin.org/get?$url-params");
say $html;

