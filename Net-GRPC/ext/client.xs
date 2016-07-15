Net::GRPC::TimeVal
new(CLASS, ...)
  SV* CLASS
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
call(self)
  Net::GRPC::Client self = NO_INIT
  CODE:
    RETVAL = 1; //grpc_channel_create_call
  OUTPUT:
    RETVAL
