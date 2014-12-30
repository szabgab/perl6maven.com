#!/usr/bin/env perl6
use v6;

# search the text within a file return 1 if found, 0 if not
sub search ($text, $file) {
    my $fh = open $file, :r;
    for $fh.readline -> $line {
        if index($line, $text) > -1 {
            return 1;
        }
    }
    return 0;
}

# optional parameter
sub search2($text, $file, $all?) {
    my $fh = open $file, :r;
    my $cnt = 0;
    for $fh.readline -> $line {
        if index($line, $text) > -1 {
            return 1 if not $all;
            $cnt++;
        }
    }
    return $cnt;
}

