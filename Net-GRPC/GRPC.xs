#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

typedef struct {
    int ip;
} Perl_GRPC_Client;

typedef Perl_GRPC_Client * Net_GRPC_Client;

MODULE = Net::GRPC		PACKAGE = Net::GRPC

MODULE = Net::GRPC		PACKAGE = Net::GRPC::Client

PROTOTYPES: DISABLE

Net_GRPC_Client
new(CLASS)
    SV* CLASS
	CODE:
		Net_GRPC_Client sv;
		RETVAL = sv;
	OUTPUT:
		RETVAL
