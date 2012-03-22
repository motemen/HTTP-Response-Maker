package HTTP::Response::Maker::PSGI;
use strict;
use warnings;
use parent 'HTTP::Response::Maker::Base';

sub make_response {
    my ($class, $code, $message, $headers, $content) = @_;
    return [ $code, $headers, [ $content ] ];
}

1;
