use v6;

sub MAIN(:$source!, :$target!, :$count = 3, :$debug = False, *@files) {
    say "source: $source";
    say "target: $target";
    say "count:  $count";
    say "debug:  $debug";
    say "files: " ~ @files.perl;
}

