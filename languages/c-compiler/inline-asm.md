# Inline ASM

[Back](../index.md#c-cpp-compilers){: .button}

`asm("statements" : output_registers : input_registers : clobber_registers)`

```c
int mul2(int a, int b) {
    int val;
    __asm__ __volatile__(   "movl  %1, %0\n\t"
                            "imull %2, %0"
                        :   "=r"(val)
                        :   "r"(a), "r"(b)
                        );

    return val;
}
```

```
Register Letter Registers That GCC May Use
R General register (EAX, EBX, ECX, EDX, ESI, EDI, EBP, ESP)
q General register for data (EAX, EBX, ECX, EDX)
f Floating-point register
t Top floating-point register
u Second-from-top floating-point register
a EAX register
b EBX register
c ECX register
d EDX register
x SSE register (Streaming SIMD Extension register)
y MMX multimedia registers
A An 8-byte value formed from EAX and EDX
D Destination pointer for string operations (EDI)
S Source pointer for string operations (ESI)```
```

## References and Further Reading

- [Inline ASM](https://mentorembedded.github.io/advancedlinuxprogramming/alp-folder/alp-ch09-inline-asm.pdf)
- [Inline ASM How TO](https://www.ibiblio.org/gferg/ldp/GCC-Inline-Assembly-HOWTO.html)
