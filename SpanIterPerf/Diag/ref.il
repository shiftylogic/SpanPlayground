.method private hidebysig static uint8  SpanRef(valuetype [System.Memory]System.Span`1<uint8> data) cil managed
{
  // Code size       65 (0x41)
  .maxstack  3
  .locals init (int32 V_0,
           uint8 V_1,
           uint8& V_2,
           int32 V_3,
           int32 V_4)
  IL_0000:  ldarga.s   data
  IL_0002:  call       instance int32 valuetype [System.Memory]System.Span`1<uint8>::get_Length()
  IL_0007:  stloc.0
  IL_0008:  ldc.i4.0
  IL_0009:  stloc.1
  IL_000a:  ldarga.s   data
  IL_000c:  call       instance !0& valuetype [System.Memory]System.Span`1<uint8>::DangerousGetPinnableReference()
  IL_0011:  stloc.2
  IL_0012:  ldc.i4.0
  IL_0013:  stloc.3
  IL_0014:  br.s       IL_0037
  IL_0016:  ldc.i4.0
  IL_0017:  stloc.s    V_4
  IL_0019:  br.s       IL_002e
  IL_001b:  ldloc.1
  IL_001c:  ldloc.2
  IL_001d:  ldloc.s    V_4
  IL_001f:  call       !!0& [System.Runtime.CompilerServices.Unsafe]System.Runtime.CompilerServices.Unsafe::Add<uint8>(!!0&,
                                                                                                                       int32)
  IL_0024:  ldind.u1
  IL_0025:  xor
  IL_0026:  conv.u1
  IL_0027:  stloc.1
  IL_0028:  ldloc.s    V_4
  IL_002a:  ldc.i4.1
  IL_002b:  add
  IL_002c:  stloc.s    V_4
  IL_002e:  ldloc.s    V_4
  IL_0030:  ldloc.0
  IL_0031:  blt.s      IL_001b
  IL_0033:  ldloc.3
  IL_0034:  ldc.i4.1
  IL_0035:  add
  IL_0036:  stloc.3
  IL_0037:  ldloc.3
  IL_0038:  ldc.i4     0x2710
  IL_003d:  blt.s      IL_0016
  IL_003f:  ldloc.1
  IL_0040:  ret
} // end of method Program::SpanRef
