use strict;
use warnings;

use Test::More;

plan tests => 2;

use_ok('Net::GRPC');

ok(Net::GRPC->grpc_version ne "", "version");
