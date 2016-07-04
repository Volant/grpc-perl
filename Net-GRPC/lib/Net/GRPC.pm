package Net::GRPC;

use 5.014002;
use strict;
use warnings;

our $VERSION = '0.01';

require XSLoader;
XSLoader::load('Net::GRPC', $VERSION);

1;
