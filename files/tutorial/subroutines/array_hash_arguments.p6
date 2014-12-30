#!/usr/bin/env perl6
use v6;

sub process_template($input, $output, %params) {
    say "open $input";
    say "replace {%params.perl}";
    say "save $output";
}

my %data = (
    fname => "Foo",
    lname => "Bar",
);

process_template("index.tmpl", "index.html", %data);

