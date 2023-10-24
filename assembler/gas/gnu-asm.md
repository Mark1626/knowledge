# GNU Assembler (GAS)

[Back](../x86.md){: .button}

> Order of calling instructions is opposite to what you would typically do 

Example

```
; NASM
_main:
  push rbp
  mov rbp, rsp

  mov al, 0
  lea [rel message], rdi
  call _printf

  mov rsp, rbp
  pop rbp
  ret

.message
  db "Hello World\n", 12
```

```
; GNU Assembler
.global _main

.text
_main:
  pushq %rbp
  movq %rsp, %rbp

  movb $0, %al
  leaq message(%rip), %rdi
  call _printf

  movq %rbp, %rsp
  popq %rbp
  ret

.data
message:
  .string "Hello World\n"

```


```
b = byte (8 bit)
s = short (16 bit integer) or single (32-bit floating point)
w = word (16 bit)
l = long (32 bit integer or 64-bit floating point)
q = quad (64 bit)
t = ten bytes (80-bit floating point)
```
