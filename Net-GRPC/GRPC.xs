#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <grpc/grpc.h>

#include <stdio.h>
#include <string.h>

#include "ext/timeval.h"

MODULE = Net::GRPC    PACKAGE = Net::GRPC

PROTOTYPES: DISABLE

BOOT:
  grpc_init();

void
destroy()
  CODE:
  grpc_shutdown();

SV*
grpc_version(CLASS)
  SV* CLASS
  CODE:
    const char* version = grpc_version_string();
    SV* perl_version = newSVpv(version, 0);
    RETVAL = perl_version;
  OUTPUT:
    RETVAL

