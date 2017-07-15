use v6;

my @promises;
for (1..5).reverse -> $t {
    my $proc = Proc::Async.new($*EXECUTABLE, "-e", qq{sleep $t; say "done $t"});
    $proc.stdout.tap: -> $s { print $s };
    push @promises: $proc.start;
}

for @promises -> $promise {
    await $promise;
}

