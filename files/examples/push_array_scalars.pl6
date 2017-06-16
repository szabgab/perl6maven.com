use v6;

my @a;
@a.push: "abc";
say @a.perl;           # ["abc"]

my @b;
@b.append: "abc";
say @b.perl;           # ["abc"]

@a.push: "def", "ghi";
say @a.perl;           # ["abc", "def", "ghi"]

@b.push: "def", "ghi";
say @b.perl;           # ["abc", "def", "ghi"]

