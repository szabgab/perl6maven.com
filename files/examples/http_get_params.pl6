use v6;
use LWP::Simple;

my $html = LWP::Simple.new.get("http://httpbin.org/get?name=Larry%20Wall&language=Perl&math=19%2B23%3D42");
say $html;

