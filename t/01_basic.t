use strict;
use warnings;
use Test::More;
use Google::Image::Download;

subtest 'on new()' => sub {

    subtest 'no args' => sub {
        my $obj = Google::Image::Download->new;
        isa_ok $obj, 'Google::Image::Download';
        is $obj->{q}, '寺川愛美';
    };

    subtest 'with args' => sub {
        my $obj = Google::Image::Download->new(q => 'hoge');
        isa_ok $obj, 'Google::Image::Download';
        is $obj->{q}, 'hoge';
    };
};

subtest 'on download()' => sub {
    
    subtest 'temp' => sub {
        my $obj = Google::Image::Download->new;
        $obj->download;
        is 1, 1;
    };
};

done_testing;

