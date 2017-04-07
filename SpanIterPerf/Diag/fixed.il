.method private hidebysig static uint8  SpanFixed(valuetype [System.Memory]System.Span`1<uint8> data) cil managed
{
  // Code size       65 (0x41)
  .maxstack  3
  .locals init (uint8& pinned V_0,
           int32 V_1,
           uint8 V_2,
           int32 V_3,
           int32 V_4)
  IL_0000:  ldarga.s   data
  IL_0002:  call       instance !0& valuetype [System.Memory]System.Span`1<uint8>::DangerousGetPinnableReference()
  IL_0007:  stloc.0
  IL_0008:  ldarga.s   data
  IL_000a:  call       instance int32 valuetype [System.Memory]System.Span`1<uint8>::get_Length()
  IL_000f:  stloc.1
  IL_0010:  ldc.i4.0
  IL_0011:  stloc.2
  IL_0012:  ldc.i4.0
  IL_0013:  stloc.3
  IL_0014:  br.s       IL_0034
  IL_0016:  ldc.i4.0
  IL_0017:  stloc.s    V_4
  IL_0019:  br.s       IL_002b
  IL_001b:  ldloc.2
  IL_001c:  ldloc.0
  IL_001d:  conv.i
  IL_001e:  ldloc.s    V_4
  IL_0020:  add
  IL_0021:  ldind.u1
  IL_0022:  xor
  IL_0023:  conv.u1
  IL_0024:  stloc.2
  IL_0025:  ldloc.s    V_4
  IL_0027:  ldc.i4.1
  IL_0028:  add
  IL_0029:  stloc.s    V_4
  IL_002b:  ldloc.s    V_4
  IL_002d:  ldloc.1
  IL_002e:  blt.s      IL_001b
  IL_0030:  ldloc.3
  IL_0031:  ldc.i4.1
  IL_0032:  add
  IL_0033:  stloc.3
  IL_0034:  ldloc.3
  IL_0035:  ldc.i4     0x2710
  IL_003a:  blt.s      IL_0016
  IL_003c:  ldloc.2
  IL_003d:  ldc.i4.0
  IL_003e:  conv.u
  IL_003f:  stloc.0
  IL_0040:  ret
} // end of method Program::SpanFixed
