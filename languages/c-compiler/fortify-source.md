# Fortify Source

[Back](../../index.md#ccpp-compilers)

The `_FORTIFY_SOURCE` macro adds compiler time and run time checks for buffer overflows and memory sanity.

```
gcc -o test test.c -D_FORTIFY_SOURCE=2
```

Available levels

**\_FORTIFY\_SOURCE=1**
**\_FORTIFY\_SOURCE=2**
**\_FORTIFY\_SOURCE=3** emits code to check buffer overflows at runtime

At higher levels of fortify source there is a penalty on build size and performance.

## References

- [GCC Fortify source](https://developers.redhat.com/articles/2022/09/17/gccs-new-fortification-level#2__better_fortification_coverage)

