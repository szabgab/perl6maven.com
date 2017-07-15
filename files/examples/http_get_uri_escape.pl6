use v6;
use URI::Escape;
use LWP::Simple;

my %params = 
   name     => "Larry Wall",
   language => "Perl",
   math     => "19+23=42",
;

my $url-params = %params.kv.map( -> $k, $v { "$k=&uri-escape($v)" }).join('&');

my $html = LWP::Simple.new.get("http://httpbin.org/get?$url-params");
say $html;

