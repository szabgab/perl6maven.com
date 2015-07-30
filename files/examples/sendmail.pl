use v6;

sub sendmail(*%mail) {
  die "Missing $_" if not %mail{$_} for <To From Subject Text> ;

  my $file = '/tmp/perl6_' ~ time ~ rand;

  my $fh = open $file, :w;
  $fh.print("To: {%mail<To>}\n");
  $fh.print("From: {%mail<From>}\n");
  $fh.print("Subject: {%mail<Subject>}\n");
  $fh.print("\n");
  $fh.print(%mail<Text>);
  $fh.close;

  shell("/usr/lib/sendmail -t < {$file}");

  unlink $file;

  return ;
}

sendmail(
  To      => 'foo@perl6maven.com',
  From    => 'bar@perl6maven.com',
  Subject => 'Reading the Perl 6 Maven',
  Text    => "
Hi,

how are you?

I have been reading the Perl 6 Maven site for a while,
I am even subscribed to the mailing list. Try it!

http://perl6maven.com/

This message was sent using the script I took from
http://perl6maven.com/sending-email-using-perl6

",
);

