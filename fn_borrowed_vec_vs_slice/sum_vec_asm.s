# rustc 1.74.0
# Generated with:
# cargo asm
#           rust_lib_asm::borrowed_vec::sum_vec
#           --rust
#           --build-type release
#           --target x86_64-pc-windows-gnu
#           --asm-style intel
 mov     rdx, qword, ptr, [rcx, +, 16]
 test    rdx, rdx
 je      .LBB0_1
 mov     rcx, qword, ptr, [rcx]
 cmp     rdx, 8
 jae     .LBB0_5
 xor     r8d, r8d
 xor     eax, eax
 jmp     .LBB0_4
.LBB0_1:
 xor     eax, eax
 ret
.LBB0_5:
 mov     r8, rdx
 and     r8, -8
 pxor    xmm0, xmm0
 xor     eax, eax
 pxor    xmm1, xmm1
.LBB0_6:
 movdqu  xmm2, xmmword, ptr, [rcx, +, 4*rax]
 paddd   xmm0, xmm2
 movdqu  xmm2, xmmword, ptr, [rcx, +, 4*rax, +, 16]
 paddd   xmm1, xmm2
 add     rax, 8
 cmp     r8, rax
 jne     .LBB0_6
 paddd   xmm1, xmm0
 pshufd  xmm0, xmm1, 238
 paddd   xmm0, xmm1
 pshufd  xmm1, xmm0, 85
 paddd   xmm1, xmm0
 movd    eax, xmm1
 jmp     .LBB0_8
.LBB0_4:
 add     eax, dword, ptr, [rcx, +, 4*r8]
 inc     r8
.LBB0_8:
 cmp     rdx, r8
 jne     .LBB0_4
 ret
