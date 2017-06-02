use v6;
use JSON::Fast;

my @color1 = 'Blue', 'White', 'Green';
say @color1.perl;

my $json_str = to-json @color1;
say $json_str;

my @color2 = from-json $json_str;
say @color2.perl;

my @color3 = | from-json $json_str;
say @color3.perl;

my @color4 := from-json $json_str;
say @color4.perl;

