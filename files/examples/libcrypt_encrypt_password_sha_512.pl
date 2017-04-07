use v6;
use Crypt::Libcrypt; 

my $password = 'secret';
my $salt = '$6$abcdefghIJKLMOPQ';

my $encripted = crypt($password, $salt);
say $encripted;
