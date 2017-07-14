use v6;
use URI::Escape;

my %params = 
   name     => "Larry Wall",
   language => "Perl",
   math     => "19+23=42",
;

say (map { "{.key}={uri-escape(.value)}" }, %params).join('&');

