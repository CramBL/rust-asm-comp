 test    rdx, rdx
 je      .LBB2_1
 cmp     rdx, 8
 jae     .LBB2_4
 xor     r8d, r8d
 xor     eax, eax
 jmp     .LBB2_7
.LBB2_1:
 xor     eax, eax
 ret
.LBB2_4:
 mov     r8, rdx
 and     r8, -8
 pxor    xmm0, xmm0
 xor     eax, eax
 pxor    xmm1, xmm1
.LBB2_5:
 movdqu  xmm2, xmmword, ptr, [rcx, +, 4*rax]
 paddd   xmm0, xmm2
 movdqu  xmm2, xmmword, ptr, [rcx, +, 4*rax, +, 16]
 paddd   xmm1, xmm2
 add     rax, 8
 cmp     r8, rax
 jne     .LBB2_5
 paddd   xmm1, xmm0
 pshufd  xmm0, xmm1, 238
 paddd   xmm0, xmm1
 pshufd  xmm1, xmm0, 85
 paddd   xmm1, xmm0
 movd    eax, xmm1
 cmp     r8, rdx
 je      .LBB2_8
.LBB2_7:
 add     eax, dword, ptr, [rcx, +, 4*r8]
 inc     r8
 cmp     rdx, r8
 jne     .LBB2_7
.LBB2_8:
 ret
