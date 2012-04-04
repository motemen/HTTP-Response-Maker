use strict;
use Test::More 'no_plan';

use_ok 'HTTP::Response::Maker', 'PSGI';
can_ok __PACKAGE__, 'OK';
can_ok __PACKAGE__, 'INTERNAL_SERVER_ERROR';
