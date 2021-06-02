# __restrict__ keyword

`__restrict__` is to mention to the complier that for the scope of the pointer the target will only be accessed through that pointer

```cpp
int mul(void* src, void* dst)

// will be invoked like mul(a, b)
// and never like mul(a, a+10)
```

which means that the data will not overlap and it can we vectorized

## Use Case

```cpp
void xor512(void *__restrict__ src, void *__restrict__ dst) {
  unsigned char* srcP = (unsigned char*)src;
  unsigned char* dstP = (unsigned char*)dst;

  for (int i=0; i< 64; ++i) {
    dstP[i] ^= srcP[i];
  }
}
```

## Output

### ASM

```
xor512(void*, void*):                          # @xor512(void*, void*)
        xor     eax, eax
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
        movzx   ecx, byte ptr [rdi + rax]
        xor     byte ptr [rsi + rax], cl
        add     rax, 1
        cmp     rax, 64
        jne     .LBB0_1
        ret
```

### With Restrict

> **Note :** In clang 12 with -O3 for the above example when I defined a constant input the compiler used SSE instructions similar to the below, however it was because these **were constants**

```asm
xor512(void*, void*):                          # @xor512(void*, void*)
        movups  xmm0, xmmword ptr [rdi]
        movups  xmm1, xmmword ptr [rsi]
        xorps   xmm1, xmm0
        movups  xmm0, xmmword ptr [rsi + 16]
        movups  xmm2, xmmword ptr [rsi + 32]
        movups  xmm3, xmmword ptr [rsi + 48]
        movups  xmmword ptr [rsi], xmm1
        movups  xmm1, xmmword ptr [rdi + 16]
        xorps   xmm1, xmm0
        movups  xmmword ptr [rsi + 16], xmm1
        movups  xmm0, xmmword ptr [rdi + 32]
        xorps   xmm0, xmm2
        movups  xmmword ptr [rsi + 32], xmm0
        movups  xmm0, xmmword ptr [rdi + 48]
        xorps   xmm0, xmm3
        movups  xmmword ptr [rsi + 48], xmm0
        ret
```

### AVX 512

Passing `-mavx512bw` will xor this with a single AVX 512 vector instruction

```asm
xor512(void*, void*):                          # @xor512(void*, void*)
        vmovdqu64       zmm0, zmmword ptr [rsi]
        vpxorq  zmm0, zmm0, zmmword ptr [rdi]
        vmovdqu64       zmmword ptr [rsi], zmm0
        vzeroupper
        ret
```

## References:

- [Chunking Optimizations: Let the Knife Do the Work](https://nullprogram.com/blog/2019/12/09/)
