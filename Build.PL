use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Google::Image::Download',
    license             => 'artistic2',
    dist_author         => 'Hideaki Takahashi <htk291@gmail.com>',
    dist_version_from   => 'lib/Google/Image/Download.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'Google-Image-Download-*' ],
);

$builder->create_build_script();
