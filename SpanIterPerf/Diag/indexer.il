.method private hidebysig static uint8  SpanIndexer(valuetype [System.Memory]System.Span`1<uint8> data) cil managed
{
  // Code size       53 (0x35)
  .maxstack  3
  .locals init (int32 V_0,
           uint8 V_1,
           int32 V_2,
           int32 V_3)
  IL_0000:  ldarga.s   data
  IL_0002:  call       instance int32 valuetype [System.Memory]System.Span`1<uint8>::get_Length()
  IL_0007:  stloc.0
  IL_0008:  ldc.i4.0
  IL_0009:  stloc.1
  IL_000a:  ldc.i4.0
  IL_000b:  stloc.2
  IL_000c:  br.s       IL_002b
  IL_000e:  ldc.i4.0
  IL_000f:  stloc.3
  IL_0010:  br.s       IL_0023
  IL_0012:  ldloc.1
  IL_0013:  ldarga.s   data
  IL_0015:  ldloc.3
  IL_0016:  call       instance !0& valuetype [System.Memory]System.Span`1<uint8>::get_Item(int32)
  IL_001b:  ldind.u1
  IL_001c:  xor
  IL_001d:  conv.u1
  IL_001e:  stloc.1
  IL_001f:  ldloc.3
  IL_0020:  ldc.i4.1
  IL_0021:  add
  IL_0022:  stloc.3
  IL_0023:  ldloc.3
  IL_0024:  ldloc.0
  IL_0025:  blt.s      IL_0012
  IL_0027:  ldloc.2
  IL_0028:  ldc.i4.1
  IL_0029:  add
  IL_002a:  stloc.2
  IL_002b:  ldloc.2
  IL_002c:  ldc.i4     0x2710
  IL_0031:  blt.s      IL_000e
  IL_0033:  ldloc.1
  IL_0034:  ret
} // end of method Program::SpanIndexer
