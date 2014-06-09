use strict;
use warnings;
use WWW::Google::Image::Download;

my $obj = WWW::Google::Image::Download->new('三森すずこ');
$obj->download;

