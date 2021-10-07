# Struct Packing

[Back](../../index.md#c-cpp-compilers){: .button}

```cpp
struct __attribute__((__packed__)) foo {
    char *p;  /* 8 bytes */
    char c;   /* 1 byte  */
    long x;   /* 8 bytes */
};
```

Structs can be packed without data alignment by using the `__attribute__` `__packed`

