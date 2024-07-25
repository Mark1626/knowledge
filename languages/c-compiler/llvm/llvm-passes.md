# LLVM Passes

[Back](../../../index.md#clang-specific){: .button}

## Passes

### ModulePass

Indicates that the pass can refer to any function bodies, adding and removing functions. No optimizations can 
be done on their execution as it's behaviour cannot be predicted

**runOnModule** performs work of the pass, it should return true if the function was changed, false if it was not

### CallGraphSCCPass

### FunctionPass

This executes on each function, independent of other functions.

### LoopPass

This is executed in each loop

## Reference

- [LLVM Optimization Pass](https://releases.llvm.org/10.0.0/docs/WritingAnLLVMPass.html)
