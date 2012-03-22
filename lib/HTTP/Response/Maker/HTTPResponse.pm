package HTTP::Response::Maker::HTTPResponse;
use strict;
use warnings;
use parent 'HTTP::Response::Maker::Base';
use HTTP::Response;

sub make_response {
    my ($class, $code, $message, $headers, $content) = @_;
    return HTTP::Response->new($code, $message, $headers, $content);
}

1;
