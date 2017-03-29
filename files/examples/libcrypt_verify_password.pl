use v6;
use Crypt::Libcrypt; 

my $password = "secret";

my $encripted = 'abNANd1rDfiNc';

if crypt($password, $encripted) eq $encripted {
    say "Verified";
}

my $salt = $encripted.substr(0, 2);
if crypt($password, $salt) eq $encripted {
    say "Verified";
}

