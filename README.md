#NAME

Google::Image::Download - Download Images using Google Search API (for Module!!)

version 0.0.1

#SYNOPSIS


    ```
    use Google::Image::Download;

    my $google = Google::Image::Download->new(
                    '__WHAT_TO_DOWNLOAD__',
    );

    $google->download;

    ```

#DESCRIPTION

Google::Image::Download is Downloads Images using Google Search API (for Module!!)

#METHODS

* Google::Image::Download->new()

    ```

    Google::Image::Download->new(
            '__WHAT_TO_DOWNLOAD__',
    );

    ```

    Without argument, it works correctly.

* $google->download()

    Start download.

#SEE ALSO

[googleImageDownload](https://github.com/htk291/googleImageDownload) - simple script for download image

#LICENCE

Copyright (C) 2014, Hideaki Takahashi

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

#AUTHOR

htk291 [htk291@gmail.com](htk291@gmail.com)
