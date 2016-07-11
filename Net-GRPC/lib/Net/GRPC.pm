package Net::GRPC;

use 5.014002;
use strict;
use warnings;

our $VERSION = '0.01';

require Exporter;
our @ISA = qw(Exporter);

our @EXPORT_OK = (qw/
	grpc_version
/);

require XSLoader;
XSLoader::load('Net::GRPC', $VERSION);

END { destroy(); }

=head1
	Google RPC library binds for Perl
=cut

1;
