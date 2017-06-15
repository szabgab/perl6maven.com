use v6;
use Terminal::Readsecret;
my $password = getsecret("password:" );
say "your password is: " ~ $password;
