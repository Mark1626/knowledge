# Boyer–Moore–Horspool algorithm

[Back](./algorithms.md){: .button}

Is an algorithm for finding substrings in strings with average-case complexity of O(n) and worst case O(mn)

It is a simplification of Boyer-Moore algorithm, it uses only the bad suffix rule

## Reference Implementation

- [Implementation in LLVM](https://reviews.llvm.org/D27068)
- [Implementation in GCC](https://github.com/gcc-mirror/gcc/commit/fc7ebc4b8d9ad7e2891b7f72152e8a2b7543cd65)
- [Implementation in v8](https://chromium.googlesource.com/v8/v8.git/+/d123f30b6df5507b2acda8e85ad63e05de8ca8a7/src/string-search.h#428)
