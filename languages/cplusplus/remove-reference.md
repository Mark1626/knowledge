### Remove reference

[Back](../../index.md){: .button}

If variable is of type T then return T, else if it a reference then return the actual type

```cpp
  std::cout << std::is_same(int, std::remove_reference<int>::type)
  std::cout << std::is_same(int, std::remove_reference<int &>::type)
  std::cout << std::is_same(int, std::remove_reference<int &&>::type)
```
