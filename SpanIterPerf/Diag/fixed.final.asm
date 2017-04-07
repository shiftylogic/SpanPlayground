            fixed (byte* pData = &data.DangerousGetPinnableReference())
00007FF934346570  push        rax  
00007FF934346571  xor         eax,eax  
00007FF934346573  mov         qword ptr [rsp],rax  
00007FF934346577  mov         rax,qword ptr [rcx]  
00007FF93434657A  mov         qword ptr [rsp],rax  
00007FF93434657E  mov         edx,dword ptr [rcx+8]  
                byte x = 0;
00007FF934346581  xor         ecx,ecx  

                for (var i = 0; i < Iterations; i++)
00007FF934346583  xor         r8d,r8d  
                {
                    for (var idx = 0; idx < length; idx++)
00007FF934346586  xor         r9d,r9d  
                    for (var idx = 0; idx < length; idx++)
00007FF934346589  test        edx,edx  
00007FF93434658B  jle         00007FF9343465A4  
                    {
                        //x ^= pData[idx];
                        x ^= *(p + idx);
00007FF93434658D  movsxd      r10,r9d  
00007FF934346590  movzx       r10d,byte ptr [rax+r10]  
00007FF934346595  xor         r10d,ecx  
00007FF934346598  movzx       ecx,r10b  
                    for (var idx = 0; idx < length; idx++)
00007FF93434659C  inc         r9d  
00007FF93434659F  cmp         r9d,edx  
00007FF9343465A2  jl          00007FF93434658D  
                for (var i = 0; i < Iterations; i++)
00007FF9343465A4  inc         r8d  
00007FF9343465A7  cmp         r8d,0F4240h  
00007FF9343465AE  jl          00007FF934346586  
                    }
                }

                return x;
00007FF9343465B0  mov         eax,ecx  
00007FF9343465B2  add         rsp,8  
00007FF9343465B6  ret  