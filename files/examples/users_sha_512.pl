use v6;

use Terminal::Readsecret;
use Crypt::Libcrypt;

main();

sub main() {
    my $database = 'users.csv';

    my $r = prompt("Register or Authenicate? [R/A] ");
    if $r.lc eq 'r' {
        say "Register";
        my $username = prompt("Username:").lc;
        
        # TODO: check for validity of username
    
        my %users = read_users($database);
        # say %users;
        if %users{$username} {
            say "This user already exists";
            exit;
        }
    
        # check if that username already exists
        my $password = getsecret("password:");
        # save username/hashed password
        %users{$username} = crypt($password, get_salt());
        save_users($database, %users);
    } elsif $r.lc() eq 'a' {
        say "Authenticate";
        my $username = prompt("Username:");
        my $password = getsecret("password:");
        my %users = read_users($database);

        # fetch the hashed password of this user
        # check if that equals to the hashed version of this password
        if %users{$username} and crypt($password, %users{$username}) eq $%users{$username} {
            say "Welcome back!";
        } else {
            say "Invalid access";
        }

    } else {
        say "Bye";
    }
}

sub read_users($database) {
    # say "Read $database";
    my %users;
    if $database.IO.e {
        my @lines = $database.IO.lines();
        for @lines -> $line {
            my ($name, $pw) = $line.split(",");
            %users{$name} = $pw;
        }
    }
    return %users;
}

sub save_users($database, %users) {
    # say $database;
    my $fh = open($database, :w);
    LEAVE $fh.close;
    for %users.keys -> $k {
        $fh.print("$k,%users{$k}\n");
    }
}

sub get_salt() {
    my @chars = 'a' ... 'z', 'A' ... 'Z', '0' ... '9';
    return '$6$' ~ @chars.pick(16).join('');
}

