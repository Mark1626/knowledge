# Profile Guided Optimization

[Back](../../index.md#c-cpp-compilers){: .button}

```
# Compile with flag -fprofile-generate
gcc -omain main.c -O3 -fprofile-generate=<dir>

# Generate profile for the execution
./main

# Use the generated profile to optimize the binary
gcc -omain main.c -O3 -fprofile-use=<dir>
```

> **Note:** The profiling build is run on multiple inputs to generate a profile that resembles the actual workload. Coverage with `gprof` is used to help with this step


## Further Reading

- [Parallel Programming and PGO with GCC](https://www.airs.com/dnovillo/Papers/eci2008.pdf)
- [Building GCC with PGO](https://d-meiser.github.io/2015/12/10/build-times.html)
- [PGO in Chrome](https://ddmler.github.io/compiler/2018/06/29/profile-guided-optimization.html)
- [GCC PGO on IBM AIX to improve zstd](https://developer.ibm.com/articles/gcc-profile-guided-optimization-to-accelerate-aix-applications/)
