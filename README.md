# NAME

WWW::Google::Image::Download - \[Download Images using Google Search API\]

# VERSION

This document describes WWW::Google::Image::Download version 0.0.1

# SYNOPSIS

    use WWW::Google::Image::Download;

    my $google = WWW::Google::Image::Download->new;
    $google->download(
                '__WHAT_TO_DOWNLOAD__',
    );

# DESCRIPTION

WWW::Google::Image::Download is Downloads Images using Google Search API

# METHODS 

\* WWW::Google::Image::Download->new

    ```
    WWW::Google::Image::Download->new;

    ```

\* $google->download

    ```
    my $google = WWW::Google::Image::Download->new;
    $google->download(
            '__WHAT_TO_DOWNLOAD__',
    );

    ```

    Start downloading.
    Without argument... still works correctly.

# LICENCE

Copyright (C) 2014, Hideaki Takahashi

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

Hideaki Takahashi \[htk291@gmail.com\](htk291@gmail.com)
