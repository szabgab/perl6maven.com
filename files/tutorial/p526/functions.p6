#!/usr/bin/env perl6
use v6;

my $lang = "Perl";

creator("Larry", $lang);
sub creator {                               # still works as in Perl5 and you get the values in @_
    my ($person, $language) = @_;           # you can copy them
    say "the creator of $language is $person";
}

creator_2("Larry", $lang);
sub creator_2 ($person, $language) {            # you can also defined the expected parameters
    #$language ~= 6;                            # but in this case you cannot change the variables
    say "the creator of $language is $person";  
}

creator_3("Larry", $lang);
sub creator_3 ($person, $language is rw) {            # you can also defined the expected parameters
    $language ~= 6;                                   # now you can change the $language variable but
    say "the creator of $language is $person";  
}
say "What ? $lang";                                   # and it also changes the parameter itself.


creator_4("Larry", $lang);
sub creator_4 ($person is copy, $language is rw) {
    $person ~= " Wall";
    say "the creator of $language is $person";  
}


