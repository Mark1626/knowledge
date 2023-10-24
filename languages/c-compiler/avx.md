# AVX

[Back](./c-compiler.md){: .button}

## Translation of intrinsics

### Behaviour of storeu and loadu

GCC's default tuning (-mtune=generic) includes -mavx256-split-unaligned-load and -mavx256-split-unaligned-store, because that gives a minor speedup on some CPUs (e.g. first-gen Sandybridge, and some AMD CPUs) in some cases when memory is actually misaligned at runtime

[Why does not GCC resolve mm256 loadu into a vmovu](https://stackoverflow.com/questions/52626726/why-doesnt-gcc-resolve-mm256-loadu-pd-as-single-vmovupd?noredirect=1)
