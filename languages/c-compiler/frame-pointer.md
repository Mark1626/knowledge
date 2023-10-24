# Frame Pointer

[Back](./c-compiler.md){: .button}

Frame pointer points to the base of the stack trace. This is done by having a dedicated 
register allocated just for the frame pointer.

In compilers the frame pointer can be exposed for benchmarking purposes by adding the compiler flag `-fnoomit-frame-pointer`, this improves the call graph

## References

- [Frame Pointer Explanation](https://softwareengineering.stackexchange.com/questions/194339/frame-pointer-explanation)
- [Frame Pointer Stackoverflow](https://stackoverflow.com/questions/14666665/trying-to-understand-gcc-option-fomit-frame-pointer#14666730)
