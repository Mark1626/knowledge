# Offloading target to PTX

[Back](./c-compiler.md){: .button}

## Offloading

**Host Compiler:**
**Accel Compiler:** - A compiler which reads LTO sections and generates code for accelerator

- Compiler create N+1 versions(one for host) of the target region for N devices
- pragmas are expanded
- LTO section is written into .gnu\_offload\_lto\_\*
- lto-wrapper runs mkoffload which runs accel compiler to convert IR into target code
- Linker adds new object files which are produced by mkoffload

## Offloading Practical

Ensure [nvptx-tools](https://github.com/MentorEmbedded/nvptx-tools) is installed, this will have to be 
used instead of binutils

Gist of [building GCC for offloading](https://gist.github.com/kristerw/4e9a735f2d755ffa73f9bf27edbf3c29)

Read this article [building-gcc-with-support-for-nvidia](https://kristerw.blogspot.com/2017/04/building-gcc-with-support-for-nvidia.html)

## References

- [GCC Offloading](https://gcc.gnu.org/wiki/Offloading)
- [Offloading to nvptx](https://gcc.gnu.org/wiki/nvptx)
- [GCC nvptx target](https://gcc.gnu.org/install/specific.html#nvptx-x-none)
