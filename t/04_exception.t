use strict;
use Test::More 'no_plan';
use Test::Requires 'HTTP::Exception';

use_ok 'HTTP::Response::Maker::Exception';

eval { NOT_FOUND() };

my $not_found = HTTP::Exception->caught;
isa_ok $not_found,       'HTTP::Exception::Base';
is     $not_found->code, 404;
