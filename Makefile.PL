use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'WWW::Google::Image::Download',
    AUTHOR              => 'Hideaki Takahashi <htk291@gmail.com>',
    VERSION_FROM        => 'lib/WWW/Google/Image/Download.pm',
    ABSTRACT_FROM       => 'lib/WWW/Google/Image/Download.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'WWW-Google-Image-Download-*' },
);
