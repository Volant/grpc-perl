use strict;
use warnings;

use Test::More;

plan tests => 6;

use_ok('Net::GRPC');
use_ok('Net::GRPC::TimeVal');

my $t1 = Net::GRPC::TimeVal->new(1000);
ok($t1 && $t1->isa("Net::GRPC::TimeVal"));

my $t2 = Net::GRPC::TimeVal->new(2000);
ok($t2 && Net::GRPC::TimeVal::cmp($t1, $t2) < 0);

my $t3 = Net::GRPC::TimeVal->new(500);
ok($t3 && Net::GRPC::TimeVal::cmp($t2, $t3) > 0);

my $t4 = Net::GRPC::TimeVal->new(1000);
ok($t4 && Net::GRPC::TimeVal::cmp($t1, $t4) == 0);

