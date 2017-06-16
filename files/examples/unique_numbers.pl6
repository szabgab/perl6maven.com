use v6;

my @duplicates = 1, 1, 2, 5, 1, 4, 3, 2, 1;
say @duplicates.perl;           # [1, 1, 2, 5, 1, 4, 3, 2, 1]


my @unique = unique @duplicates;
say @unique.perl;               # [1, 2, 5, 4, 3]
