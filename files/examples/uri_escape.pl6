use v6;
use URI::Escape;

my %params = 
   name     => "Larry Wall",
   language => "Perl",
   math     => "19+23=42",
;

say %params.kv.map( -> $k, $v { "$k=&uri-escape($v)" }).join('&');

