use v6;
use Crypt::Bcrypt;

my $password = 'secret';

for 4..17 -> $c {
    my $start = now;
    my $encrypted = bcrypt-hash($password, :rounds($c));
    my $end = now;
    say "hash  {$c}  {$end-$start}";

    $start = now;
    my $valid = bcrypt-match($password, $encrypted);
    $end = now;
    say "match {$c}  {$end-$start}";
}
