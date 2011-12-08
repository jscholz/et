#!/usr/bin/perl
use PostScript::Simple;
use POSIX qw(ceil floor);

unless (scalar(@ARGV) == 7) {
  print "Usage:
    $0 <water/sewer> <name> <et> <name> <et> <name> <et>

    e.g.: $0 69.63 Arya +8.04 Jon +47.27 Jeremy -55.31
";
  exit
}

#my %rent = (Jon => 469, Jeremy => 423, Arya => 516);
my %rent = (Jeremy => 438, Jon => 486.67, Arya => 535.33);
my $trash = 3;
my $water = shift @ARGV;
my $utils = $water + $trash;
die "usage: $0 <water_bill_amount>\n" unless $utils;
my $small = floor($utils * 100 / 3);
my %utils = (Jon => $small/100, Jeremy => $small/100, Arya => $utils-2*$small/100);

my %et = @ARGV;
for my $key (keys %et) {
print "$key -> $et{$key}\n";
}
my $p = new PostScript::Simple(papersize => "Letter", 
			       units => "in",
			       eps => 0);
$p->setfont("Times-Roman", 20);

my ($x1,$y1) = (1,.5);
my ($x2,$y2) = ($x1+6.5,$y1+3);

my %total = ();

for $i (keys %rent) {
  my $total = $rent{$i} + $utils{$i} - $et{$i};
  $total{$i} = $total;
  my $string;
  if ($et{$i} >= 0) {
    $string = sprintf('%s: $%.2f + $%.2f - $%.2f = $%.2f', 
		      $i, $rent{$i}, $utils{$i}, $et{$i}, $total);
  }
  else {
    $string = sprintf('%s: $%.2f + $%.2f + $%.2f = $%.2f', 
		      $i, $rent{$i}, $utils{$i}, -$et{$i}, $total);
  }
  print ";; $string\n";
  $p->box($x1,$y1, $x2,$y2);
  $p->text($x1+.5,$y2-.5, $string);
  $y1 = $y2 + .5;
  $y2 = $y1 + 3;
}

print "
(expense (payer post) (value 1460) (splits (jeremy $rent{Jeremy}) (jon $rent{Jon}) (arya $rent{Arya}))) ;; rent
(expense (payer post) (value $utils) (splits jeremy jon arya)) ;; water / sewer / admin + 
\$3 trash
;; (payment (from jeremy) (to post) (value $total{Jeremy}))
;; (payment (from jon) (to post) (value $total{Jon}))
;; (payment (from arya) (to post) (value $total{Arya}))
";
## Doesn't work with BSD 'date'
# my $date;
# if (`date +\%e` > 6) {
#   $date = `date '+\%B \%Y' -d 'next month'`;
# } else {
#   $date = `date '+\%B \%Y'`;
# }

$p->output("/tmp/file.ps");
exec "open /tmp/file.ps";
