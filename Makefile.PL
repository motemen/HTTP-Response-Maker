use inc::Module::Install;

name 'HTTP-Response-Maker';
all_from 'lib/HTTP/Response/Maker.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';

auto_set_repository;
auto_include;

WriteAll;
