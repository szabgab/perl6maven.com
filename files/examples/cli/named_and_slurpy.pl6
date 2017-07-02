use v6;

sub MAIN(Str :$source!, Str :$target!, Int :$count = 3, Bool :$debug = False, *@files) {
    say "source: $source";
    say "target: $target";
    say "count:  $count";
    say "debug:  $debug";
    say "files: " ~ @files.perl;
}

