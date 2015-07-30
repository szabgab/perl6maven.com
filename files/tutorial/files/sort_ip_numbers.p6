#!/usr/bin/env perl6
use v6;

my $filename = @*ARGS.shift;
if not $filename {
    say "Usage: $*PROGRAM-NAME filename";
    exit;
}

my @ips = $filename.IO.lines;


say join "\n", @ips;
say "Number of IPs {@ips.elems}";
say "------------------";
say join "\n", sort &f, @ips;
say "------------------";

sub f ($a, $b) {
    my @a = split /\./, $a;
    my @b = split /\./, $b;
    for 0..@a-1 -> $i {
        return 1 if $i >= @b;
        next if @a[$i] == @b[$i];
        return @a[$i] <=> @b[$i];
    }
    return 0;
}

#my @data = map { hash {"ip" => $_, "data" => [split /\./, $_]} } @ips;

           # we should be able to remove the hash word up there but it seems to be a bug in Pugs
#say @ips.elems;
#say @data.elems;
#say "------------------";
#for 0..@data-1 -> $i {
#    say "$i @data[$i]";
#}
#say @data.perl;
#my @sorted = sort \&g, @data;
#say join "\n", map {$_<ip>} @data;
#say join "\n", map {$_<ip>} @sorted;
#say "------------------";


sub g (%a, %b) {
    my @a = %a<data>;
    my @b = %b<data>;
    for 0..@a-1 -> $i {
        return 1 if $i >= @b;
        next if @a[$i] == @b[$i];
        return @a[$i] <=> @b[$i];
    }
    return 0;
}

