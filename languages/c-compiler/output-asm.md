# Output Assembly

[Back](./c-compiler.md){: .button}

Generated assembly can be outputted using the `-S` flag and mentioning the platform

```sh
cc -S main.cpp -mllvm --x86-asm-syntax=intel
```

```sh
gcc -S main.cc -fverbose-asm
```
