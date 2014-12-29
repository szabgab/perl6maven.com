use v6;


my $filename = "append.txt";
{
    my $fh = open $filename, :w;
    $fh.say("Hello World");
    $fh.close;
}

{
    my $in = open $filename, :r;
    my @lines = $in.lines;
    if (@lines.elems != 1) {
        die "Not good. Number of elems is {@lines.elems}";
    }
}
{
    my $fh = open $filename, :a;
    $fh.say("second line");
    $fh.close; # needs call to flush
}


{
    my $in = open $filename, :r;
    my @rows = $in.lines;
    if (@rows.elems != 2) {
        #die "Not good. Number of elems is {@lines.elems}";
    }
    say @rows.perl;
    if (@rows[0] ne "Hello World") {
        die "first line is incorrect '{@rows[0]}'";
    }
    if (@rows[1] ne "second line") {
        die "second line is incorrect '{@rows[1]}'";
    }
}
