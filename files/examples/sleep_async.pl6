use v6;

my @promises;
for 1..5 {
    my $proc = Proc::Async.new($*EXECUTABLE, "-e", "sleep 2; say 'done'");
    $proc.stdout.tap: -> $s { print $s };
    push @promises: $proc.start;
}

for @promises -> $promise {
    await $promise;
}

