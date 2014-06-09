use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'WWW::Google::Image::Download',
    license             => 'artistic2',
    dist_author         => 'Hideaki Takahashi <htk291@gmail.com>',
    dist_version_from   => 'lib/WWW/Google/Image/Download.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'WWW-Google-Image-Download-*' ],
);

$builder->create_build_script();
