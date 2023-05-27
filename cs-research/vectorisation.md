# Case Study Gridding

## SoA and AoS

### AoS

```
std::complex<float> arr[N];
```

Modern compilers have techniques for vectorizing AoS implementations

Pros:

- Easy for developers to use the structure

Cons:

- Harder vectorization

### SoA

```
template <typename T> struct SOAComplex {
  T *real;
  T *imag;
};
```

SoA implementation is always faster than AoS as the vectorization is straight forward.

Pros:

- Easy vectorization

Cons:

- Harder for developers to use the structure

## Tiled SoA or AoSoA

This is a compromise between vectorization and user experience

```cpp
template <typename T> struct complex2 {
  alignas(8) T imag[2];
  alignas(8) T real[2];
};
complex2<float> arr[N]
```

Pros:

- Easy vectorization

Cons:

- Slower than SoA
- CPU has to load the entire structure, there may be cache related issues


## SIMD Tiled SoA

In this apprach we do the tiling for Tiled SoA instead of the compiler

```
(base) [m.nimalan@gondor build]$ ./stsoa 
Access with CASA
CPP Wallclock Std gridding 44999.9 ms
CPP Wallclock SIMD 2 Tiled gridding 3229.8 ms
CPP Wallclock SIMD 4 Tiled gridding 4435.18 ms
All assertions passed for SSE
All assertions passed for AVX
```

Pros:

- No change to developers code
- Vectorization would be more efficient

Cons:

- Intrinsics code has to be writted separately for each CPU feature(SSE, AVX, FMA)

## fcx-limited-range

yandasoft uses `-fcx-limited-range` which informs the compiler that multiplication, division, and absolute value of complex numbers may use simplified mathematical formulas `(x+iy)×(u+iv) = (xu-yv)+i(yu+xv)`, this greatly optimises the gridding code

In gondor the difference between the having the flag is **24x** faster, which means we have to scale up our STSOA implementation.

This also means that the pointer implementation and the AoS implementation have the same performance.

```
With -fcx-limited-range

(base) [m.nimalan@gondor build]$ ./stsoa 
Access with CASA
CPP Wallclock Std gridding 1839.24 ms
CPP Wallclock SIMD 2 Tiled gridding 3188.1 ms
CPP Wallclock SIMD 4 Tiled gridding 3578.35 ms
All assertions passed for SSE
All assertions passed for AVX
```

## OpenMP simd pragma

The omp simd pragma can collapse loops.

```cpp
#pragma omp simd collapse(2)
for (int voff = 0; voff <= 2*support; voff++) {
  for (int suppu = -support; suppu <= support; suppu++) {
    const int suppv = voff - support;
    const int uoff = suppu + support;
    CFloat wt = convFunc(voff, uoff);
    grid(iv + suppv, iu + suppu) += cVis * wt;
  }
}
```

Impact of loop collapse

```
(base) [m.nimalan@gondor build]$ ./stsoa 
Access with CASA
CPP Wallclock Std gridding 44949.5 ms
CPP Wallclock Std gridding variant 14765 ms
CPP Wallclock SIMD 2 Tiled gridding 3222.85 ms
CPP Wallclock SIMD 4 Tiled gridding 4427.25 ms
```

The loop collapse variant is **3x** faster than the normal std::complex gridding

With `-fcx-limited-range` we are still slower

```
(base) [m.nimalan@gondor build]$ ./stsoa 
Access with CASA
CPP Wallclock Std gridding 1838.88 ms
CPP Wallclock Std gridding variant 17223.8 ms
CPP Wallclock SIMD 2 Tiled gridding 2735.88 ms
CPP Wallclock SIMD 4 Tiled gridding 3590.65 ms
```

## SIMD Tiled SoA with OpenMP simd pragma

```
(base) [m.nimalan@gondor build]$ ./stsoa 
Access with CASA
CPP Wallclock Std gridding 44905 ms
CPP Wallclock Std gridding omp variant 14517.2 ms
CPP Wallclock SIMD 2 Tiled gridding 3192.87 ms
CPP Wallclock SIMD 2 Tiled gridding omp variant 6820.49 ms
CPP Wallclock SIMD 4 Tiled gridding 4393.77 ms
```

## Single header libraries

A bottleneck in our implementation is the `call` function.
Both the C++ Std library and come with single file header formats ie) implementation is in header, so the compiler will optimize code of the header file in the current CU

Single header libraries

Before inlining

```
(base) [m.nimalan@gondor build]$ ./stsoa 
Access with CASA
CPP Wallclock SIMD 2 Tiled gridding 670.14 ms
```

After inlining

```
(base) [m.nimalan@gondor build]$ ./stsoa 
Access with CASA
CPP Wallclock SIMD 2 Tiled gridding 367.054 ms
```

Time taken by our implementation improves close to **2x** from this

```
(base) [m.nimalan@gondor build]$ ./stsoa 
Access with CASA
CPP Wallclock Std gridding 44131.6 ms
CPP Wallclock ptr gridding 1672.64 ms
CPP Wallclock SIMD 2 Tiled gridding 1911.09 ms
CPP Wallclock gridding avx 2734.79 ms
```

Our SSE implementation is close to the pointer implementation. The AVX is still performing poorly than the SSE implementation.

## Why is AVX performing so poorly?

The AVX implementation is performing so poorly, a perf report shows this

```
+   77.92%    77.92%  stsoa    stsoa                 [.] gridding_casa_simd_4
+   21.26%    21.26%  stsoa    libgcc_s.so.1         [.] __mulsc3
```

`__mulsc3` is complex multiplication, this is added is make sure that float multiplication does not overflow into NaN.

In our AVX implementation the last grid points are gridded in the same method as the default `std::complex` implementation

If we add the `fcx-limited-range` flag to the source we can simplify this

```
+   99.26%    98.75%  stsoa    stsoa                 [.] gridding_casa_simd_4
```

Alternatively we can use `#pragma STDC CX_LIMITED_RANGE` if we don't want to enable `-fcx-limited-range` for the whole code.

```
(base) [m.nimalan@gondor build]$ ./stsoa 
Access with CASA
CPP Wallclock Std gridding 1649.07 ms
CPP Wallclock ptr gridding 1648.19 ms
CPP Wallclock SIMD 2 Tiled gridding 1891.82 ms
CPP Wallclock gridding avx 1934.41 ms
```

## Bottleneck of our intrinsic code

`_mm256_storeu_ps` is transformed into `vextractf128` for first 128bit `vmovups` and second 128 bit rather than `vmovaps` with a `ymmword ptr`


```
        913  extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
        914  _mm256_storeu_ps (float *__P, __m256 __A)
        915  {          
        916  *(__m256_u *)__P = __A;
 36.58         vextractf128 $0x1,%ymm0,0x10(%r11,%rcx,1)
 19.06         vmovups      %xmm0,(%r11,%rcx,1)
```

## Zen 3 micro architecture

AMD has pushed many improvements from Zen 1 to Zen 2, and further improvements is Zen 3 architecture. In Zen 3 architecture our SIMD Tiled SoA implementation is faster than ASKAP ptr gridding

```
Std gridding                  1774.829 ms
ASKAP ptr gridding            1760.225 ms
SIMD SSE Tiled gridding       1406.519 ms
SIMD AVX Tiled gridding       1079.274 ms
```

## Case Study into x86

One question that arises is that with -Ofast and all unsafe math optimization will `std::complex` outperform TSoA and SoA?

No, `fcx-limited-range` is the only flag needed

Is our SIMD Tiled implementation limited by our intrinsics usage

There are possibilites with vmovdup, `_mm256_dp_ps`, `_mm256_movehdup_ps`, `_mm256_insert2f128`
