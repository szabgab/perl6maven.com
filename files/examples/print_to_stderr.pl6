use v6;

say 'This goes to Standard Output';
say 'The rest will go to Standard Error';

$*ERR.say: 'foo 1';
$*ERR.say('foo 2');
$*ERR.print("foo 3\n");
$*ERR.print: "foo 4\n";

note('bar');
'bar'.note;

my %h = 
    name   => 'Perl 6',
    answer => 42,
    grades => [98, 73],
;

dd %h;

