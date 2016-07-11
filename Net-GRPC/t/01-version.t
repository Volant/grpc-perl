#!/usr/bin/perl -w

use strict;

use Devel::Peek;

use Encode qw/is_utf8 encode decode from_to/;

use lib "blib/lib";
use lib "blib/arch";

use Net::GRPC::Client;

my $ver = Net::GRPC->grpc_version;

Dump $ver;

warn "Using [>" . $ver . "<] version of GRPC";

