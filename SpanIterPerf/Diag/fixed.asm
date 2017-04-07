            fixed (byte* pData = &data.DangerousGetPinnableReference())
00007FF9344C6530  push        rax  
00007FF9344C6531  xor         eax,eax  
00007FF9344C6533  mov         qword ptr [rsp],rax  
00007FF9344C6537  mov         rax,qword ptr [rcx]  
00007FF9344C653A  mov         qword ptr [rsp],rax  
00007FF9344C653E  mov         eax,dword ptr [rcx+8]  
                byte x = 0;
00007FF9344C6541  xor         edx,edx  

                for (var i = 0; i < Iterations; i++)
00007FF9344C6543  xor         ecx,ecx  
                {
                    for (var idx = 0; idx < length; idx++)
00007FF9344C6545  xor         r8d,r8d  
                    for (var idx = 0; idx < length; idx++)
00007FF9344C6548  test        eax,eax  
00007FF9344C654A  jle         00007FF9344C6567  
                    {
                        //x ^= pData[idx];
                        x ^= *(pData + idx);
00007FF9344C654C  mov         r9,qword ptr [rsp]  
00007FF9344C6550  movsxd      r10,r8d  
00007FF9344C6553  movzx       r9d,byte ptr [r9+r10]  
00007FF9344C6558  xor         r9d,edx  
00007FF9344C655B  movzx       edx,r9b  
                    for (var idx = 0; idx < length; idx++)
00007FF9344C655F  inc         r8d  
00007FF9344C6562  cmp         r8d,eax  
00007FF9344C6565  jl          00007FF9344C654C  
                for (var i = 0; i < Iterations; i++)
00007FF9344C6567  inc         ecx  
00007FF9344C6569  cmp         ecx,2710h  
00007FF9344C656F  jl          00007FF9344C6545  
                    }
                }

                return x;
00007FF9344C6571  mov         eax,edx  
00007FF9344C6573  add         rsp,8  
00007FF9344C6577  ret  