use strict;
use warnings;
use WebService::Google::Image::Download;

my $obj = WebService::Google::Image::Download->new('三森すずこ');
$obj->download;

