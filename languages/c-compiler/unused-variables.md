# Ignore unused variables

[Back](./c-compiler.md){: .button}

#### In clang and GCC

```c
int foo(__attribute__((unused)) int bar) {
}
```

#### Cross compiler

```c
int foo(int bar) {
  (void)bar;
}
```

