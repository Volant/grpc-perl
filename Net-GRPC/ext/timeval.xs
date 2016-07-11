Net::GRPC::TimeVal
new(char *class, ...)
  PREINIT:
    void * c = malloc(10);
  CODE:
    RETVAL = c;
  OUTPUT:
    RETVAL
