package HTTP::Response::Maker;
use strict;
use warnings;
use Class::Load qw(load_class);

our $VERSION = '0.01';
our @DefaultHeaders = ();

sub import {
    my ($class, $impl, @args) = @_;

    $impl = "HTTP::Response::Maker::$impl";
    load_class $impl;

    @_ = @args;
    goto $impl->can('import');
}

1;

__END__

=head1 NAME

HTTP::Response::Maker -

=head1 SYNOPSIS

  use HTTP::Response::Maker 'HTTPResponse', (
      default_headers => [
          'Content-Type' => 'text/html; charset=utf-8'
      ],
      prefix => 'RESPOND_',
  );

=head1 FUNCTION ARGS

  my $res = OK;
  my $res = OK $content;
  my $res = OK \@headers;
  my $res = OK \@headers, $content;

=head1 DESCRIPTION

HTTP::Response::Maker is

=head1 AUTHOR

motemen E<lt>motemen@gmail.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
