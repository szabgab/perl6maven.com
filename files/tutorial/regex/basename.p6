#!/usr/bin/env perl6
use v6;

#say $*CWD;

say basename('/a/b/c');
say basename('/a/b/c.txt');
say "'{basename('/a/b/')}'";
say "'{basename('abc.txt')}'";

say dirname('/a/b/c');
say dirname('/a/b/c.txt');
say "'{dirname('/a/b/')}'";
say "'{dirname('abc.txt')}'";

sub basename($path) {
    return $path if $path !~~ m/\//;
    if ($path ~~ m/.* \/ (.*) $/) {
        return $0;
    } else {
        print "No match for basename of ($path)";
    }

}

sub dirname($path) {
    return '' if $path !~~ m/\//;
    if ($path ~~ m/(.* \/) .* $/) {
        return $0;
    } else {
        print "No match for dirname of ($path)";
    }
}