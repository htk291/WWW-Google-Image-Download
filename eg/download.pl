use strict;
use warnings;
use WWW::Google::Image::Download;

my $obj = WWW::Google::Image::Download->new;
$obj->download();
$obj->download('三森すずこ');
$obj->download('明智小衣');

print $obj->get_url;
