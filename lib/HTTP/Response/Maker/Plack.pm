package HTTP::Response::Maker::Plack;
use strict;
use warnings;
use parent 'HTTP::Response::Maker::Base';
use Class::Load qw(load_class);

sub make_response {
    my ($class, $code, $message, $headers, $content, $option) = @_;
    my $response_class = $option->{class} || 'Plack::Response';
    load_class $response_class;
    return $response_class->new($code, $headers, $content);
}

1;
