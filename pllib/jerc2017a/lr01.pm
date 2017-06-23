package jerc2017a::lr01;
use strict;
use JSON::PP;


sub bsc {
  my $lc_ret;
  my $lc_src;
  my $lc_chr;
  $lc_src = scalar reverse $_[0];
  $lc_ret = "\'";
  while ( $lc_src ne "" )
  {
    $lc_chr = chop($lc_src);
    if ( $lc_chr eq "\'" ) { $lc_chr = "\'\"\'\"\'"; }
    $lc_ret .= $lc_chr;
  }
  $lc_ret .= "\'";
  return $lc_ret;
}


sub safety {
  my $lc_ok;
  my $lc_rsl;
  $lc_ok = 0;
  eval {
    $lc_rsl = decode_json($_[0]);
    $_[1] = $lc_rsl;
    $lc_ok = 10;
  };
  return ( $lc_ok > 5 );
}




1;

