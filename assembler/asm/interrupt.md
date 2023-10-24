# Interrupt

[Back](../x86.md){: .button}

In asm `int` will interrupt and pass the control to the interrupt vector defined

In linux `0x80` passes the control to the kernel, it is a way for userland programs to communicate with the kernel

```asm
.data
  s:
    .ascii "hello \n"
    len = . - s
.text
  .global _start
  _start:
    movl $4, %eax /* write system call */
    movl $1, %ebx /* stdout */
    movl $s, %ecx /* data */
    movl $len, %edx
    int $0x80     /* Interrupt call to kernel */

    movl %1, %eax /* exit system call */
    movl %0, %ebx /* exit status */
    int $0x80     /* Interrupt call to kernel */
```

