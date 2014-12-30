#!/usr/bin/env perl6
use v6;


sub add ($a, $b) {
    return $a + $b;
}
# define sub
# cannot pass more parameters
#say add(2, 3);      # returns 5
#say add(2, 3, 4);   # run time exception : too many arguments passed (3) - 2 params expected




my %data;
process_template('index.tmpl', 'index.html', %data);

sub process_template($input, $output, %params) {
    say "input: $input";
    say "output $output";
}




#sub add ($a, $b, $c) {
#    return $c;
#}



#say &add.WHAT;
#say &add.perl;
#say &add.arity; # number of required arguments


