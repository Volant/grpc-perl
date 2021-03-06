#########################
### TimeVal constants ###
#########################

int
TIMEVAL_CLOCK_MONOTONIC()
  CODE:
    RETVAL = GPR_CLOCK_MONOTONIC;
  OUTPUT:
    RETVAL

int
TIMEVAL_CLOCK_REALTIME()
  CODE:
    RETVAL = GPR_CLOCK_REALTIME;
  OUTPUT:
    RETVAL

int
TIMEVAL_CLOCK_PRECISE()
  CODE:
    RETVAL = GPR_CLOCK_PRECISE;
  OUTPUT:
    RETVAL

int
TIMEVAL_TIMESPAN()
  CODE:
    RETVAL = GPR_TIMESPAN;
  OUTPUT:
    RETVAL

