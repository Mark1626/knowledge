# Auto Vectorization

[Back](./c-compiler.md){: .button}

## Categories of loop vectorization

### Trivial example

```cpp
int a[64], b[64], c[64];
void mul() {

  for(int i = 0; i < 64; ++i) {
    c[i] = b[i] * a[i];
  }
}
```

### Unknown loop bound

```cpp
int a[64], b[64], c[64];
void mul(int N) {

  for(int i = 0; i < N; ++i) {
    c[i] = b[i] * a[i];
  }
}
```

### Reduction

```cpp
int a[64];
void sum() {
  int sum = 0;
  for(int i = 0; i < 64; ++i) {
    sum += a[i];
  }
}
```

### Induction

```cpp
int a[64];
void init() {
  for(int i = 0; i < 64; ++i) {
    a[i] = i;
  }
}
```

### if conversion

```cpp
int a[64];
void assign() {
  for(int i = 0; i < 64; ++i) {
    a[i] = a[i] > x ? MAX : 0;
  }
}
```

### Reverse Iteration

```cpp
int a[64], b[64], c[64];
void mul(int N) {
  for(int i = N-1; i >= 0; --i) {
    c[i] = b[i] * a[i];
  }
}
```

### Multidimension array 

```cpp
int a[M][N];
void foo (int x) {
   int i,j;

   for (i=0; i<M; i++) {
     for (j=0; j<N; j++) {
       a[i][j] = x;
     }
   }
}
```

### Mixed type

```cpp
void fn(int32_t *A, int8_t* B, int n) {
  for(int i = 0; i < n; ++i) {
    A[i] += 4 * B[i];
  }
}
```

### SLP vectorization (a.k.a. superword-level parallelism)

Superword-level parallelism vectorization involves combining multiple scalar instructions to vector instructions

```cpp
void foo(int a1, int a2, int b1, int b2, int *A) {
  A[0] = a1*(a1 + b1);
  A[1] = a2*(a2 + b2);
  A[2] = a1*(a1 + b1);
  A[3] = a2*(a2 + b2);
}
```

## Reference

- [LLVM Vectorization](https://llvm.org/docs/Vectorizers.html#the-loop-vectorizer)
- [GCC Tree SSA vectorization](https://gcc.gnu.org/projects/tree-ssa/vectorization.html)

## See Also

- [LLVM Specific Extras](./clang/auto-vectorization.md)
- [GCC Specific Extras](./gcc/auto-vectorization.md)
