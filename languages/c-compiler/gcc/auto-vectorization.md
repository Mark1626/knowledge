# Auto Vectorization

[Back](../../../index.md#gcc){: .button}

## Vectorizing float operations

- `funsafe-math-optimizations` - Float reduction needs this flag to be turned on

## Flags to promote auto vectorization

1. `-ftree-loop-distribution` - Performs [loop distribution](../loop-distribution.md)

---

## Auto Vectorization Report

Enable vectorization with
`-ftree-vectorize`

add verbose flags
`-ftree-vectorizer-verbose=6`
`-fopt-info-vec-missed`



## References

- [Tree SSA Auto vectorization](https://gcc.gnu.org/projects/tree-ssa/vectorization.html)
