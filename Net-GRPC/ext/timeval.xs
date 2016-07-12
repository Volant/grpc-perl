Net::GRPC::TimeVal
new(char *class, ...)
  PREINIT:
    TimeValCTX *ctx;
    Newxz(ctx, sizeof(TimeValCTX), TimeValCTX);
  CODE:
    if (items > 1) {
      ctx->wrapped = gpr_time_from_millis(SvUV(ST(1)), GPR_TIMESPAN);
    } else {
      ctx->wrapped = gpr_time_0(GPR_CLOCK_REALTIME);
    }
    RETVAL = ctx;
  OUTPUT:
    RETVAL

int
cmp(Net::GRPC::TimeVal t1, Net::GRPC::TimeVal t2)
  CODE:
    RETVAL = gpr_time_cmp(t1->wrapped, t2->wrapped);
  OUTPUT:
    RETVAL

Net::GRPC::TimeVal
far_future(int type)
  PREINIT:
    TimeValCTX *ctx;
    Newxz(ctx, sizeof(TimeValCTX), TimeValCTX);
  CODE:
    ctx->wrapped = gpr_inf_future(type);
    RETVAL = ctx;
  OUTPUT:
    RETVAL

Net::GRPC::TimeVal
far_past(int clock_type)
  PREINIT:
    TimeValCTX *ctx;
    Newxz(ctx, sizeof(TimeValCTX), TimeValCTX);
  CODE:
    ctx->wrapped = gpr_inf_past(clock_type);
    RETVAL = ctx;
  OUTPUT:
    RETVAL

Net::GRPC::TimeVal
now(int clock_type)
  PREINIT:
    TimeValCTX *ctx;
    Newxz(ctx, sizeof(TimeValCTX), TimeValCTX);
  CODE:
    ctx->wrapped = gpr_now(clock_type);
    RETVAL = ctx;
  OUTPUT:
    RETVAL

unsigned long
get_tv_sec(Net::GRPC::TimeVal t)
  CODE:
    RETVAL = t->wrapped.tv_sec;
  OUTPUT:
    RETVAL

unsigned long
get_tv_nsec(Net::GRPC::TimeVal t)
  CODE:
    RETVAL = t->wrapped.tv_nsec;
  OUTPUT:
    RETVAL

int
get_clock_type(Net::GRPC::TimeVal t)
  CODE:
    RETVAL = t->wrapped.clock_type;
  OUTPUT:
    RETVAL

void
DESTROY(Net::GRPC::TimeVal self)
  CODE:
    Safefree(self);

