# LLVM

## Tools

### Emit llvm

```
clang -O3 -emit-llvm test.cc -c -o hello.bc
```

### Run llvm jit

```
lli hello.bc
```

### Explore the IR

```
llvm-dis < hello.bc | less
```

### Compile IR into ASM

```
llc hello.bc -o hello.s
```

## Reference

- [IEEE SecDev LLVM Tutorial](https://cs.rochester.edu/u/ejohns48/secdev19/secdev20-llvm-tutorial-version4_copy.pdf)
