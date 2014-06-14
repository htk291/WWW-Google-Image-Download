package WWW::Google::Image::Download;
use strict;
use warnings;
use Carp;
use File::Basename;
use FindBin;
use LWP::UserAgent;
use Path::Class qw/ dir file /;
use WebService::Simple;

our $VERSION = '0.0.1';

sub new {
    my ($class, $opt) = @_;
    bless {
        dir     => "$FindBin::Bin/data" ,
        ua      => LWP::UserAgent->new,
        google  => WebService::Simple->new(
            base_url => 'http://ajax.googleapis.com/ajax/services/search/images',
            params   => { v => '1.0', rsz => '1', hl => 'ja' },
            response_parser => 'JSON',
        ),
    }, $class;
}

sub download {
    my ($self, $arg) = @_;
    my $dir  = dir( $self->{dir} );
    $dir->mkpath;
    my $imageUrl = get_url($self, $arg, $dir);
    $self->{ua}->get(
              $imageUrl,
              ':content_file' => $dir->file( basename($imageUrl) )->stringify
            );
}

sub get_url {
    my ($self, $arg, $dir) = @_;
    my $response = $self->{google}->get({ q => $arg // '寺川愛美', start => 0 });
    $response->parse_response->{responseData}{results}[0]->{url};
}
1;
__END__

=head1 NAME

WWW::Google::Image::Download - [Download Images using Google Search API]


=head1 VERSION

This document describes WWW::Google::Image::Download version 0.0.1


=head1 SYNOPSIS

    use WWW::Google::Image::Download;

    my $google = WWW::Google::Image::Download->new;
    $google->download(
                '__WHAT_TO_DOWNLOAD__',
    );


=head1 DESCRIPTION

WWW::Google::Image::Download is Downloads Images using Google Search API


=head1 METHODS 

* WWW::Google::Image::Download->new

    WWW::Google::Image::Download->new;


* $google->download

    my $google = WWW::Google::Image::Download->new;
    $google->download(
            '__WHAT_TO_DOWNLOAD__',
    );


Start downloading.
Without argument... still works correctly.


=head1 LICENCE

Copyright (C) 2014, Hideaki Takahashi

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=head1 AUTHOR

Hideaki Takahashi [htk291@gmail.com](htk291@gmail.com)

