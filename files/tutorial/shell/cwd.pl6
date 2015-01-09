use v6;

say $*CWD;        # "/home/gabor/work/perl6maven.com".IO
say $*CWD.WHAT;   # (IO::Path)


my $old_path = $*CWD;
my $old_dir = $*CWD.basename;

chdir '..';
say $*CWD;        # "/Users/gabor/work".IO

chdir $old_dir;
say $*CWD;        # "/Users/gabor/work/perl6maven.com".IO

chdir '/';
say $*CWD;        # "/".IO

chdir $old_path;
say $*CWD;        # "/Users/gabor/work/perl6maven.com".IO

