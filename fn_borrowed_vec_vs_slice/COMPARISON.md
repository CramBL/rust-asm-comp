# Diff sum
## Compairing
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<style type="text/css">
.ansi2html-content { display: inline; white-space: pre-wrap; word-wrap: break-word; }
.body_foreground { color: #AAAAAA; }
.body_background { background-color: #000000; }
.inv_foreground { color: #000000; }
.inv_background { background-color: #AAAAAA; }
.ansi34 { color: #0000aa; }
.ansi48-52 { background: #5f0000; }
.ansi38-88 { color: #870000; }
.ansi48-124 { background: #af0000; }
.ansi48-22 { background: #005f00; }
.ansi38-28 { color: #008700; }
.ansi48-28 { background: #008700; }
.ansi38-231 { color: #ffffff; }
.ansi38-238 { color: #444444; }
</style>
</head>
<body class="body_foreground body_background" style="font-size: normal;" >
<pre class="ansi2html-content">
<span class="ansi34">Δ sum_vec ⟶ sum_slice</span>

<span class="ansi34">────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────</span>
<span class="ansi34">│</span><span class="ansi38-88">  1 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-52">pub fn </span><span class="ansi38-231 ansi48-124">sum_vec</span><span class="ansi38-231 ansi48-52">(nums: &amp;</span><span class="ansi38-231 ansi48-124">Vec&lt;</span><span class="ansi38-231 ansi48-52">u32</span><span class="ansi38-231 ansi48-124">&gt;</span><span class="ansi38-231 ansi48-52">) -&gt; u32 {</span><span class="ansi48-52">              </span><span class="ansi34">│</span><span class="ansi38-28">  1 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-22">pub fn </span><span class="ansi38-231 ansi48-28">sum_slice</span><span class="ansi38-231 ansi48-22">(nums: &amp;</span><span class="ansi38-231 ansi48-28">[</span><span class="ansi38-231 ansi48-22">u32</span><span class="ansi38-231 ansi48-28">]</span><span class="ansi38-231 ansi48-22">) -&gt; u32 {</span><span class="ansi48-22">               </span>
<span class="ansi34">│</span><span class="ansi38-238">  2 </span><span class="ansi34">│</span><span class="ansi38-231">        nums.iter().sum()</span>                             <span class="ansi34">│</span><span class="ansi38-238">  2 </span><span class="ansi34">│</span><span class="ansi38-231">        nums.iter().sum()</span>
<span class="ansi34">│</span><span class="ansi38-238">  3 </span><span class="ansi34">│</span><span class="ansi38-231">}</span>                                                     <span class="ansi34">│</span><span class="ansi38-238">  3 </span><span class="ansi34">│</span><span class="ansi38-231">}</span>
</pre>
</body>

</html>


## Assembly
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<style type="text/css">
.ansi2html-content { display: inline; white-space: pre-wrap; word-wrap: break-word; }
.body_foreground { color: #AAAAAA; }
.body_background { background-color: #000000; }
.inv_foreground { color: #000000; }
.inv_background { background-color: #AAAAAA; }
.ansi34 { color: #0000aa; }
.ansi48-52 { background: #5f0000; }
.ansi38-88 { color: #870000; }
.ansi48-124 { background: #af0000; }
.ansi48-22 { background: #005f00; }
.ansi38-28 { color: #008700; }
.ansi48-28 { background: #008700; }
.ansi38-141 { color: #af87ff; }
.ansi38-81 { color: #5fd7ff; }
.ansi38-231 { color: #ffffff; }
.ansi38-238 { color: #444444; }
</style>
</head>
<body class="body_foreground body_background" style="font-size: normal;" >
<pre class="ansi2html-content">
<span class="ansi34">Δ a/.\\sum_vec_asm.s ⟶   b/.\\sum_slice_asm.s</span>


<span class="ansi34">─────</span></span>
<span class="ansi34">│</span><span class="ansi38-238">  1 </span><span class="ansi34">│</span><span class="ansi38-231"># Generated with:</span>                                     <span class="ansi34">│</span><span class="ansi38-238">  1 </span><span class="ansi34">│</span><span class="ansi38-231"># Generated with:</span>
<span class="ansi34">│</span><span class="ansi38-238">  2 </span><span class="ansi34">│</span><span class="ansi38-231"># cargo asm</span>                                           <span class="ansi34">│</span><span class="ansi38-238">  2 </span><span class="ansi34">│</span><span class="ansi38-231"># cargo asm</span>
<span class="ansi34">│</span><span class="ansi38-88">  3 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-52">#           rust_lib_asm::</span><span class="ansi38-231 ansi48-124">borrowed_vec</span><span class="ansi38-231 ansi48-52">::</span><span class="ansi38-231 ansi48-124">sum_vec</span><span class="ansi48-52">       </span><span class="ansi34">│</span><span class="ansi38-28">  3 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-22">#           rust_lib_asm::</span><span class="ansi38-231 ansi48-28">borrowed_slice</span><span class="ansi38-231 ansi48-22">::</span><span class="ansi38-231 ansi48-28">sum_slice</span><span class="ansi48-22">   </span>
<span class="ansi34">│</span><span class="ansi38-238">  4 </span><span class="ansi34">│</span><span class="ansi38-231">#           --rust</span>                                    <span class="ansi34">│</span><span class="ansi38-238">  4 </span><span class="ansi34">│</span><span class="ansi38-231">#           --rust</span>
<span class="ansi34">│</span><span class="ansi38-238">  5 </span><span class="ansi34">│</span><span class="ansi38-231">#           --build-type release</span>                      <span class="ansi34">│</span><span class="ansi38-238">  5 </span><span class="ansi34">│</span><span class="ansi38-231">#           --build-type release</span>
<span class="ansi34">│</span><span class="ansi38-238">  6 </span><span class="ansi34">│</span><span class="ansi38-231">#           --target x86_64-pc-windows-gnu</span>            <span class="ansi34">│</span><span class="ansi38-238">  6 </span><span class="ansi34">│</span><span class="ansi38-231">#           --target x86_64-pc-windows-gnu</span>
<span class="ansi34">│</span><span class="ansi38-238">  7 </span><span class="ansi34">│</span><span class="ansi38-231">#           --asm-style intel</span>                         <span class="ansi34">│</span><span class="ansi38-238">  7 </span><span class="ansi34">│</span><span class="ansi38-231">#           --asm-style intel</span>
<span class="ansi34">│</span><span class="ansi38-88">  8 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-52"> </span><span class="ansi38-81 ansi48-52">mov</span><span class="ansi38-231 ansi48-52">     rdx, qword, ptr,</span><span class="ansi38-81 ansi48-52"> [rcx, +,</span><span class="ansi38-141 ansi48-52"> 16</span><span class="ansi38-81 ansi48-52">]</span><span class="ansi48-52">                </span><span class="ansi34">│</span><span class="ansi38-28">    </span><span class="ansi34">│</span>
<span class="ansi34">│</span><span class="ansi38-238">  9 </span><span class="ansi34">│</span><span class="ansi38-231"> test    rdx, rdx</span>                                     <span class="ansi34">│</span><span class="ansi38-238">  8 </span><span class="ansi34">│</span><span class="ansi38-231"> test    rdx, rdx</span>
<span class="ansi34">│</span><span class="ansi38-88"> 10 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-52"> je      .</span><span class="ansi38-231 ansi48-124">LBB0_1</span><span class="ansi48-52">                                      </span><span class="ansi34">│</span><span class="ansi38-28">  9 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-22"> je      .</span><span class="ansi38-231 ansi48-28">LBB2_1</span><span class="ansi48-22">                                      </span>
<span class="ansi34">│</span><span class="ansi38-88"> 11 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-52"> </span><span class="ansi38-81 ansi48-52">mov</span><span class="ansi38-231 ansi48-52">     rcx, qword, ptr,</span><span class="ansi38-81 ansi48-52"> [rcx]</span><span class="ansi48-52">                       </span><span class="ansi34">│</span><span class="ansi38-28">    </span><span class="ansi34">│</span>
<span class="ansi34">│</span><span class="ansi38-238"> 12 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">cmp</span><span class="ansi38-231">     rdx,</span><span class="ansi38-141"> 8</span>                                       <span class="ansi34">│</span><span class="ansi38-238"> 10 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">cmp</span><span class="ansi38-231">     rdx,</span><span class="ansi38-141"> 8</span>
<span class="ansi34">│</span><span class="ansi38-88"> 13 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-52"> jae     .</span><span class="ansi38-231 ansi48-124">LBB0_5</span><span class="ansi48-52">                                      </span><span class="ansi34">│</span><span class="ansi38-28"> 11 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-22"> jae     .</span><span class="ansi38-231 ansi48-28">LBB2_4</span><span class="ansi48-22">                                      </span>
<span class="ansi34">│</span><span class="ansi38-238"> 14 </span><span class="ansi34">│</span><span class="ansi38-231"> xor     r8d, r8d</span>                                     <span class="ansi34">│</span><span class="ansi38-238"> 12 </span><span class="ansi34">│</span><span class="ansi38-231"> xor     r8d, r8d</span>
<span class="ansi34">│</span><span class="ansi38-238"> 15 </span><span class="ansi34">│</span><span class="ansi38-231"> xor     eax, eax</span>                                     <span class="ansi34">│</span><span class="ansi38-238"> 13 </span><span class="ansi34">│</span><span class="ansi38-231"> xor     eax, eax</span>
<span class="ansi34">│</span><span class="ansi38-88"> 16 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-52"> jmp     .</span><span class="ansi38-231 ansi48-124">LBB0_4</span><span class="ansi48-52">                                      </span><span class="ansi34">│</span><span class="ansi38-28"> 14 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-22"> jmp     .</span><span class="ansi38-231 ansi48-28">LBB2_7</span><span class="ansi48-22">                                      </span>
<span class="ansi34">│</span><span class="ansi38-88"> 17 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-52">.LBB0_1:</span><span class="ansi48-52">                                              </span><span class="ansi34">│</span><span class="ansi38-28">    </span><span class="ansi34">│</span>
<span class="ansi34">│</span><span class="ansi38-88">    </span><span class="ansi34">│</span>                                                      <span class="ansi34">│</span><span class="ansi38-28"> 15 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-22">.LBB2_1:</span><span class="ansi48-22">                                              </span>
<span class="ansi34">│</span><span class="ansi38-238"> 18 </span><span class="ansi34">│</span><span class="ansi38-231"> xor     eax, eax</span>                                     <span class="ansi34">│</span><span class="ansi38-238"> 16 </span><span class="ansi34">│</span><span class="ansi38-231"> xor     eax, eax</span>
<span class="ansi34">│</span><span class="ansi38-238"> 19 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">ret</span>                                                  <span class="ansi34">│</span><span class="ansi38-238"> 17 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">ret</span>
<span class="ansi34">│</span><span class="ansi38-88"> 20 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-52">.LBB0_5:</span><span class="ansi48-52">                                              </span><span class="ansi34">│</span><span class="ansi38-28">    </span><span class="ansi34">│</span>
<span class="ansi34">│</span><span class="ansi38-88">    </span><span class="ansi34">│</span>                                                      <span class="ansi34">│</span><span class="ansi38-28"> 18 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-22">.LBB2_4:</span><span class="ansi48-22">                                              </span>
<span class="ansi34">│</span><span class="ansi38-238"> 21 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">mov</span><span class="ansi38-231">     r8, rdx</span>                                      <span class="ansi34">│</span><span class="ansi38-238"> 19 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">mov</span><span class="ansi38-231">     r8, rdx</span>
<span class="ansi34">│</span><span class="ansi38-238"> 22 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">and</span><span class="ansi38-231">     r8, -</span><span class="ansi38-141">8</span>                                       <span class="ansi34">│</span><span class="ansi38-238"> 20 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">and</span><span class="ansi38-231">     r8, -</span><span class="ansi38-141">8</span>
<span class="ansi34">│</span><span class="ansi38-238"> 23 </span><span class="ansi34">│</span><span class="ansi38-231"> pxor    xmm0, xmm0</span>                                   <span class="ansi34">│</span><span class="ansi38-238"> 21 </span><span class="ansi34">│</span><span class="ansi38-231"> pxor    xmm0, xmm0</span>
<span class="ansi34">│</span><span class="ansi38-238"> 24 </span><span class="ansi34">│</span><span class="ansi38-231"> xor     eax, eax</span>                                     <span class="ansi34">│</span><span class="ansi38-238"> 22 </span><span class="ansi34">│</span><span class="ansi38-231"> xor     eax, eax</span>
<span class="ansi34">│</span><span class="ansi38-238"> 25 </span><span class="ansi34">│</span><span class="ansi38-231"> pxor    xmm1, xmm1</span>                                   <span class="ansi34">│</span><span class="ansi38-238"> 23 </span><span class="ansi34">│</span><span class="ansi38-231"> pxor    xmm1, xmm1</span>
<span class="ansi34">│</span><span class="ansi38-88"> 26 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-52">.LBB0_6:</span><span class="ansi48-52">                                              </span><span class="ansi34">│</span><span class="ansi38-28">    </span><span class="ansi34">│</span>
<span class="ansi34">│</span><span class="ansi38-88">    </span><span class="ansi34">│</span>                                                      <span class="ansi34">│</span><span class="ansi38-28"> 24 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-22">.LBB2_5:</span><span class="ansi48-22">                                              </span>
<span class="ansi34">│</span><span class="ansi38-238"> 27 </span><span class="ansi34">│</span><span class="ansi38-231"> movdqu  xmm2, xmmword, ptr,</span><span class="ansi38-81"> [rcx, +,</span><span class="ansi38-141"> 4</span><span class="ansi38-81">*rax]</span>          <span class="ansi34">│</span><span class="ansi38-238"> 25 </span><span class="ansi34">│</span><span class="ansi38-231"> movdqu  xmm2, xmmword, ptr,</span><span class="ansi38-81"> [rcx, +,</span><span class="ansi38-141"> 4</span><span class="ansi38-81">*rax]</span>
<span class="ansi34">│</span><span class="ansi38-238"> 28 </span><span class="ansi34">│</span><span class="ansi38-231"> paddd   xmm0, xmm2</span>                                   <span class="ansi34">│</span><span class="ansi38-238"> 26 </span><span class="ansi34">│</span><span class="ansi38-231"> paddd   xmm0, xmm2</span>
<span class="ansi34">│</span><span class="ansi38-238"> 29 </span><span class="ansi34">│</span><span class="ansi38-231"> movdqu  xmm2, xmmword, ptr,</span><span class="ansi38-81"> [rcx, +,</span><span class="ansi38-141"> 4</span><span class="ansi38-81">*rax, +,</span><span class="ansi38-141"> 16</span><span class="ansi38-81">]</span>   <span class="ansi34">│</span><span class="ansi38-238"> 27 </span><span class="ansi34">│</span><span class="ansi38-231"> movdqu  xmm2, xmmword, ptr,</span><span class="ansi38-81"> [rcx, +,</span><span class="ansi38-141"> 4</span><span class="ansi38-81">*rax, +,</span><span class="ansi38-141"> 16</span><span class="ansi38-81">]</span>
<span class="ansi34">│</span><span class="ansi38-238"> 30 </span><span class="ansi34">│</span><span class="ansi38-231"> paddd   xmm1, xmm2</span>                                   <span class="ansi34">│</span><span class="ansi38-238"> 28 </span><span class="ansi34">│</span><span class="ansi38-231"> paddd   xmm1, xmm2</span>
<span class="ansi34">│</span><span class="ansi38-238"> 31 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">add</span><span class="ansi38-231">     rax,</span><span class="ansi38-141"> 8</span>                                       <span class="ansi34">│</span><span class="ansi38-238"> 29 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">add</span><span class="ansi38-231">     rax,</span><span class="ansi38-141"> 8</span>
<span class="ansi34">│</span><span class="ansi38-238"> 32 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">cmp</span><span class="ansi38-231">     r8, rax</span>                                      <span class="ansi34">│</span><span class="ansi38-238"> 30 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">cmp</span><span class="ansi38-231">     r8, rax</span>
<span class="ansi34">│</span><span class="ansi38-88"> 33 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-52"> jne     .</span><span class="ansi38-231 ansi48-124">LBB0_6</span><span class="ansi48-52">                                      </span><span class="ansi34">│</span><span class="ansi38-28"> 31 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-22"> jne     .</span><span class="ansi38-231 ansi48-28">LBB2_5</span><span class="ansi48-22">                                      </span>
<span class="ansi34">│</span><span class="ansi38-238"> 34 </span><span class="ansi34">│</span><span class="ansi38-231"> paddd   xmm1, xmm0</span>                                   <span class="ansi34">│</span><span class="ansi38-238"> 32 </span><span class="ansi34">│</span><span class="ansi38-231"> paddd   xmm1, xmm0</span>
<span class="ansi34">│</span><span class="ansi38-238"> 35 </span><span class="ansi34">│</span><span class="ansi38-231"> pshufd  xmm0, xmm1,</span><span class="ansi38-141"> 238</span>                              <span class="ansi34">│</span><span class="ansi38-238"> 33 </span><span class="ansi34">│</span><span class="ansi38-231"> pshufd  xmm0, xmm1,</span><span class="ansi38-141"> 238</span>
<span class="ansi34">│</span><span class="ansi38-238"> 36 </span><span class="ansi34">│</span><span class="ansi38-231"> paddd   xmm0, xmm1</span>                                   <span class="ansi34">│</span><span class="ansi38-238"> 34 </span><span class="ansi34">│</span><span class="ansi38-231"> paddd   xmm0, xmm1</span>
<span class="ansi34">│</span><span class="ansi38-238"> 37 </span><span class="ansi34">│</span><span class="ansi38-231"> pshufd  xmm1, xmm0,</span><span class="ansi38-141"> 85</span>                               <span class="ansi34">│</span><span class="ansi38-238"> 35 </span><span class="ansi34">│</span><span class="ansi38-231"> pshufd  xmm1, xmm0,</span><span class="ansi38-141"> 85</span>
<span class="ansi34">│</span><span class="ansi38-238"> 38 </span><span class="ansi34">│</span><span class="ansi38-231"> paddd   xmm1, xmm0</span>                                   <span class="ansi34">│</span><span class="ansi38-238"> 36 </span><span class="ansi34">│</span><span class="ansi38-231"> paddd   xmm1, xmm0</span>
<span class="ansi34">│</span><span class="ansi38-238"> 39 </span><span class="ansi34">│</span><span class="ansi38-231"> movd    eax, xmm1</span>                                    <span class="ansi34">│</span><span class="ansi38-238"> 37 </span><span class="ansi34">│</span><span class="ansi38-231"> movd    eax, xmm1</span>
<span class="ansi34">│</span><span class="ansi38-88"> 40 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-52"> jmp     .LBB0_8</span><span class="ansi48-52">                                      </span><span class="ansi34">│</span><span class="ansi38-28">    </span><span class="ansi34">│</span>
<span class="ansi34">│</span><span class="ansi38-88"> 41 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-52">.LBB0_4:</span><span class="ansi48-52">                                              </span><span class="ansi34">│</span><span class="ansi38-28">    </span><span class="ansi34">│</span>
<span class="ansi34">│</span><span class="ansi38-88">    </span><span class="ansi34">│</span>                                                      <span class="ansi34">│</span><span class="ansi38-28"> 38 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-22"> </span><span class="ansi38-81 ansi48-22">cmp</span><span class="ansi38-231 ansi48-22">     r8, rdx</span><span class="ansi48-22">                                      </span>
<span class="ansi34">│</span><span class="ansi38-88">    </span><span class="ansi34">│</span>                                                      <span class="ansi34">│</span><span class="ansi38-28"> 39 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-22"> je      .LBB2_8</span><span class="ansi48-22">                                      </span>
<span class="ansi34">│</span><span class="ansi38-88">    </span><span class="ansi34">│</span>                                                      <span class="ansi34">│</span><span class="ansi38-28"> 40 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-22">.LBB2_7:</span><span class="ansi48-22">                                              </span>
<span class="ansi34">│</span><span class="ansi38-238"> 42 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">add</span><span class="ansi38-231">     eax, dword, ptr,</span><span class="ansi38-81"> [rcx, +,</span><span class="ansi38-141"> 4</span><span class="ansi38-81">*r8]</span>              <span class="ansi34">│</span><span class="ansi38-238"> 41 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">add</span><span class="ansi38-231">     eax, dword, ptr,</span><span class="ansi38-81"> [rcx, +,</span><span class="ansi38-141"> 4</span><span class="ansi38-81">*r8]</span>
<span class="ansi34">│</span><span class="ansi38-238"> 43 </span><span class="ansi34">│</span><span class="ansi38-231"> inc     r8</span>                                           <span class="ansi34">│</span><span class="ansi38-238"> 42 </span><span class="ansi34">│</span><span class="ansi38-231"> inc     r8</span>
<span class="ansi34">│</span><span class="ansi38-88"> 44 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-52">.LBB0_8:</span><span class="ansi48-52">                                              </span><span class="ansi34">│</span><span class="ansi38-28">    </span><span class="ansi34">│</span>
<span class="ansi34">│</span><span class="ansi38-238"> 45 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">cmp</span><span class="ansi38-231">     rdx, r8</span>                                      <span class="ansi34">│</span><span class="ansi38-238"> 43 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">cmp</span><span class="ansi38-231">     rdx, r8</span>
<span class="ansi34">│</span><span class="ansi38-88"> 46 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-52"> jne     .</span><span class="ansi38-231 ansi48-124">LBB0_4</span><span class="ansi48-52">                                      </span><span class="ansi34">│</span><span class="ansi38-28"> 44 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-22"> jne     .</span><span class="ansi38-231 ansi48-28">LBB2_7</span><span class="ansi48-22">                                      </span>
<span class="ansi34">│</span><span class="ansi38-88">    </span><span class="ansi34">│</span>                                                      <span class="ansi34">│</span><span class="ansi38-28"> 45 </span><span class="ansi34">│</span><span class="ansi38-231 ansi48-22">.LBB2_8:</span><span class="ansi48-22">                                              </span>
<span class="ansi34">│</span><span class="ansi38-238"> 47 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">ret</span>                                                  <span class="ansi34">│</span><span class="ansi38-238"> 46 </span><span class="ansi34">│</span><span class="ansi38-231"> </span><span class="ansi38-81">ret</span>

</pre>
</body>

</html>

## Conclusion
Passing a borrowed vector `&Vec<T>` instead of a borrowed slice `&[T]` introduces an unneccesary indirection and narrows the usability of the function (cannot be used on an array). In trivial cases this indirection will be spotted by the compiler and optimized away, but the usability of the function remains limited. If the indirection is not removed by the compiler, the cost is extra instructions that might be costly if it means another roundtrip to fetch data, the extra instructions are visible on line 8, left side of the side-by-side view:
```asm
mov     rdx, qword, ptr, [rcx, +, 16]
```
The pointer to `Vec<T>` is incremented by 16 and the address is derefenced to load it into `rdx`, this is the length of `Vec<T>`.
This operation is unneccesary when using a slice because a slice is a pointer to the first element and a length (it also includes the size of the elements).
The introduced overhead is retrieving this information through the pointer to `Vec<T>`.

The other additional overhead is loading the address of the first element into `rcx` on l. 11, left of the side-by-side view:
```asm
mov     rcx, qword, ptr, [rcx]
```
The rest of the operations are identical. The slice/vector is summed with SIMD instructions aligned to 8 elements in this case (`u32`), any leftover elements that don't align are summed one-by-one in a loop l. 42-46 on the left and l. 38-44 on the right of the side-by-side view.
