use strict;
use Test::More 'no_plan';
use Test::Requires 'HTTP::Exception';

use_ok 'HTTP::Response::Maker::Exception';

eval { NOT_FOUND() };
isa_ok my $e = HTTP::Exception->caught, 'HTTP::Exception::Base';
is $e->code, 404;
note $e->trace->as_string;
