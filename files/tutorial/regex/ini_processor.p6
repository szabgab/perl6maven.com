#!/usr/bin/env perl6
use v6;

my $dir;
if ($*PROGRAM-NAME ~~ m/^ (.*) \/ .* $/) {
    $dir = $0;
}
#say $dir;


my $fh = open("$dir/data.ini", :r);
my %ini;

my $section;
for $fh.lines -> $line {
    #say $line;
    if ($line ~~ m/ ^ ' '* (\#.*)? $ /) {
        #say "m: '$/'";
        next; # coment or empty line
    }
    if ($line ~~ m/ ^ \[ (.*) \] $ /) {
        $section = $0;
        if (not %ini{$section}) {
            %ini{$section} = {};
        }
        next;
    }
    if ($line ~~ m/ ^ \s* (\S*) \s* \= \s* (.*) $ / ) {
        #say "'$0' '$1'";
        #say $0.perl;
        die if not $section;
        %ini{$section}{$0} = "$1";
    }
}

say %ini.perl;
