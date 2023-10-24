# Overriding ostream \<\< for cout

[Back](./cplusplus.md){: .button}

```cpp
class Test {

  friend std::ostream& operator <<(std::ostream& stream, const Test& test);
};


std::ostream& Test::operator <<(std::ostream& stream, const Test& test) {

  stream << "some value";
  return stream;
}

```

