use v6;
use Crypt::Libcrypt; 

my $password = "secret";
my $salt = "ab";

my $encripted = crypt($password, $salt);
say $encripted;
