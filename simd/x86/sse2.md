# SSE2 - Streaming SIMD Extensions

[Back](../../index.md#simd){: .button}

## Terminology

- ps: packed single-precision(float)
- pd: packed double-precision(double)
- pi: packed integer

## Understanding an instruction

```c
// set packed single precision is the xmm register
__mm_set_ps1(0.1f) // sets 0.1f to all four lanes of the XMM register
__mm_set_ps(0.1f, 0.2f, 0.3f, 0.4f) // sets 0.1f, 0.2f, 0.3f, 0.4f in the lanes of the XXM
```

```c
// multiply packed single precision is the xmm register
__mm_mul_ps(xs, ys)
```

## Reference

- [Intel Software Intrinsics Guide](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#techs=SSE2)
