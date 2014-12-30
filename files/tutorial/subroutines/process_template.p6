#!/usr/bin/env perl6
use v6;

sub process_template($input, %params) {
    my $output = substr($input, 0, -4) ~ "html";
    say "open $input";
    say "replace {%params.perl}";
    say "save $output";
}

my %data = (
    fname => "Foo",
    lname => "Bar",
);

process_template("index.tmpl", %data);

