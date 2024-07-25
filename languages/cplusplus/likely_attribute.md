# Likely and Unlikely attribute

[Back](../../index.md#cpp){: .button#cpp}

In C++20 `[[unlikely]]`, `[[likely]]` attributes can be applied to statements, they allow the compiler to paths of execution

```cpp
double pow(double a, int b) {
  if (n > 0) [[likely]] {
    return x * pow(a, b - 1);
  }
  else [[unlikely]] {
    return 1;
  }
}
```
