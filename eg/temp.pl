use strict;
use warnings;
use Google::Image::Download;
use Data::Dumper;

my $obj = Google::Image::Download->new('三森すずこ');
 $obj->download;


