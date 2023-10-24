# Auto Vectorization

**From:** [LLVM](../llvm.md){: .button}

- `ffast-math` - Float reduction needs this flag to be turned on

Hinting the compiler to auto vectorize

```cpp
#pragma clang loop vectorize(enable)
```

## Loop Vectorization Report

```
-Rpass=loop-vectorize identifies loops that were successfully vectorized.

-Rpass-missed=loop-vectorize identifies loops that failed vectorization and indicates if vectorization was specified.

-Rpass-analysis=loop-vectorize identifies the statements that caused vectorization to fail.
```

## See Also

## References

- [LLVM Loop Vectorization](https://llvm.org/docs/Vectorizers.html#the-loop-vectorizer)
