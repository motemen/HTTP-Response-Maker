use strict;
use Test::More tests => 7;

use_ok 'HTTP::Response::Maker::PSGI';

is_deeply OK(),                       [ 200, [], [ '200 OK' ] ];
is_deeply OK('Hello'),                [ 200, [], [ 'Hello' ] ];
is_deeply FOUND([ Location => '/' ]), [ 302, [ Location => '/' ], [ '302 Found' ] ];
is_deeply NO_CONTENT(),               [ 204, [], [ '' ] ];

use_ok 'HTTP::Response::Maker::PSGI', (
    default_headers => [ 'Content-Type' => 'application/json' ],
    prefix => 'JSON_',
);

is_deeply JSON_OK('{}'), [ 200, [ 'Content-Type' => 'application/json' ], [ '{}' ] ];
