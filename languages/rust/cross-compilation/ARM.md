## Cross Compilation to Raspberry Pi(ARMv7)

[Back](../../index.md){: .button}

Build with `cargo build --target=armv7-unknown-linux-musleabihf`

Requires the target `armv7-unknown-linux-musleabihf`

#### Prerequisites

- `rustup target add armv7-unknown-linux-musleabihf`
- `brew install arm-linux-gnueabihf-binutils` to install `gnueabihf-binutils`

### Extra Config

```toml
[target.armv7-unknown-linux-musleabihf]
linker = "arm-linux-gnueabihf-ld"
```

### Notes

It was not possible to install ARM gcc in Mac so ended up having to switch the 
target into `musl-gcc`, so that the binary can be statically linked in the ARM
environment

### References

- https://sigmaris.info/blog/2019/02/cross-compiling-rust-on-mac-os-for-an-arm-linux-router/

### Zettle

Id: 488bc11bcd111caa54bb20e6ea86f40a
Links:
- 4505d22dcf996cbab8e559dce609e5a1
