use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'WebService::Google::Image::Download',
    AUTHOR              => 'Hideaki Takahashi <htk291@gmail.com>',
    VERSION_FROM        => 'lib/WebService/Google/Image/Download.pm',
    ABSTRACT_FROM       => 'lib/WebService/Google/Image/Download.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'WebService-Google-Image-Download-*' },
);
