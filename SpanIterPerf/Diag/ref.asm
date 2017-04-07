            ref byte p = ref data.DangerousGetPinnableReference();
00007FF9346B64B0  mov         rax,qword ptr [rcx]  
00007FF9346B64B3  mov         edx,dword ptr [rcx+8]  
            byte x = 0;
00007FF9346B64B6  xor         ecx,ecx  

            for (var i = 0; i < Iterations; i++)
00007FF9346B64B8  xor         r8d,r8d  
            {
                for (var idx = 0; idx < length; idx++)
00007FF9346B64BB  xor         r9d,r9d  
                for (var idx = 0; idx < length; idx++)
00007FF9346B64BE  test        edx,edx  
00007FF9346B64C0  jle         00007FF9346B64D9  
00007FF9346B64C2  movsxd      r10,r9d  
00007FF9346B64C5  movzx       r10d,byte ptr [rax+r10]  
00007FF9346B64CA  xor         r10d,ecx  
00007FF9346B64CD  movzx       ecx,r10b  
00007FF9346B64D1  inc         r9d  
00007FF9346B64D4  cmp         r9d,edx  
00007FF9346B64D7  jl          00007FF9346B64C2  
            for (var i = 0; i < Iterations; i++)
00007FF9346B64D9  inc         r8d  
00007FF9346B64DC  cmp         r8d,2710h  
00007FF9346B64E3  jl          00007FF9346B64BB  
                }
            }

            return x;
00007FF9346B64E5  mov         eax,ecx  
00007FF9346B64E7  ret