package HTTP::Response::Maker::Exception;
use strict;
use warnings;
use parent 'HTTP::Response::Maker::Base';
use HTTP::Exception;
use HTTP::Status;

sub make_response {
    my ($class, $code, $message, $headers, $content) = @_;

    my %args;
    if (is_redirect($code) && (my $location = { @$headers }->{Location})) {
        $args{location} = $location;
    }

    HTTP::Exception->throw($code, %args);
}

1;
