# Initializer list

[Back](./cplusplus.md)

Initializing variables can be done with Initializer list in the contructors

```cpp
class Test {
  int n;
  char c;
  public:
    Test() : n(1), c{'o'} {}
    Test(n) : n(n) {}
    Test(Test& a) : n(a.n) {}
}
```

## Reference

- [Constructors](https://en.cppreference.com/w/cpp/language/constructor)
