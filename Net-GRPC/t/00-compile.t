use strict;
use warnings;

use Test::More;

plan tests => 2;

use_ok('Net::GRPC');
use_ok('Net::GRPC::Client');

# use Net::GRPC::Client;

# my $client = Net::GRPC::Client->new();

# use Devel::Peek;

# print Dump $client;