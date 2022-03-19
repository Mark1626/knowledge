# inline

[Back](../index.md){: .button}

```cpp
// header.h

namespace test {
  // Definition has to be here so that this is available for other TU
  inline int add(int a, int b) {
    return a+b;
  }
}
```

