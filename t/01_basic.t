use strict;
use warnings;
use Test::More;
use Test::Mock::Guard qw/ mock_guard /;
use WWW::Google::Image::Download;

my $obj = WWW::Google::Image::Download->new;

subtest 'on new()' => sub {

    subtest 'no args' => sub {
        isa_ok $obj, 'WWW::Google::Image::Download';
    };
};

subtest 'on download()' => sub {
    
    subtest 'download' => sub {
        my $guard = mock_guard $obj => {
            download => sub { my ($self, $arg) = @_; $arg;},
        };
        is $obj->download('三森すずこ'), '三森すずこ';
    };
};

subtest 'on get_url()' => sub {
    
    subtest 'get_url' => sub {
        my $guard = mock_guard $obj => {
            get_url => sub { my ($self, $arg) = @_;
                             'http://www.crank-in.net/img/db/1040758_300.jpg';},
        };
        is $obj->get_url('橘田いずみ'), 'http://www.crank-in.net/img/db/1040758_300.jpg';
    };
};
done_testing;

