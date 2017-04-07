            int length = data.Length;
00007FF9308560D0  push        rsi  
00007FF9308560D1  sub         rsp,20h  
00007FF9308560D5  mov         eax,dword ptr [rcx+8]  
00007FF9308560D8  mov         edx,eax  
            byte x = 0;
00007FF9308560DA  xor         r8d,r8d  

            for (var i = 0; i < Iterations; i++)
00007FF9308560DD  xor         r9d,r9d  
            {
                for (var idx = 0; idx < length; idx++)
00007FF9308560E0  xor         r10d,r10d  
                for (var idx = 0; idx < length; idx++)
00007FF9308560E3  test        edx,edx  
00007FF9308560E5  jle         00007FF930856106  
                {
                    x ^= data[idx];
00007FF9308560E7  cmp         r10d,eax  
00007FF9308560EA  jae         00007FF93085611B  
00007FF9308560EC  mov         r11,qword ptr [rcx]  
00007FF9308560EF  movsxd      rsi,r10d  
00007FF9308560F2  movzx       r11d,byte ptr [r11+rsi]  
00007FF9308560F7  xor         r11d,r8d  
00007FF9308560FA  movzx       r8d,r11b  
                for (var idx = 0; idx < length; idx++)
00007FF9308560FE  inc         r10d  
00007FF930856101  cmp         r10d,edx  
00007FF930856104  jl          00007FF9308560E7  
            for (var i = 0; i < Iterations; i++)
00007FF930856106  inc         r9d  
00007FF930856109  cmp         r9d,0F4240h  
00007FF930856110  jl          00007FF9308560E0  
                }
            }

            return x;
00007FF930856112  mov         eax,r8d  
00007FF930856115  add         rsp,20h  
00007FF930856119  pop         rsi  
00007FF93085611A  ret  
                {
                    x ^= data[idx];
00007FF93085611B  call        00007FF985615CD0  
00007FF930856120  int         3  