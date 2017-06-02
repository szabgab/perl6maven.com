use v6;
use JSON::Fast;

my %person1 =
    name => 'Foo',
    id   => 42,
;

say %person1.perl;
say %person1.^name;
say %person1<name>;
say %person1<id>;

say '';
my $json_str = to-json %person1;
say $json_str;

say '';
my %person2 = from-json $json_str;
say %person2.perl;
say %person2.^name;
say %person2<name>;
say %person2<id>;

say '';
my %person3 := from-json $json_str;
say %person3.perl;
say %person3.^name;
say %person3<name>;
say %person3<id>;



