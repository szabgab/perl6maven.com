use v6.c;

my @chars = qw/b c a d b a a a b/;
say @chars.perl;        # ["b", "c", "a", "d", "b", "a", "a", "a", "b"]

my $count  = @chars.Bag;
say $count.^name;     # Bag
say $count.perl;      # ("d"=>1,"b"=>3,"a"=>4,"c"=>1).Bag
say $count<a>;        # 4 
