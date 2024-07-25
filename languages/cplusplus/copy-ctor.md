# Copy Constructors

[Back](../../index.md#cpp){: .button}

## Examples

### Standard

```cpp
class A {
  int a
  public:
    A(A& b) { this->a = b.a };
}
```

### Copy ctor with initializer list

```cpp
class A {
  int a
  public:
    A(A& b): a(b.a) {};
}
```

### Automatically creating a contructor

```cpp
class A {
  public:
    A(A& b) = default; // Force compiler to create a copy contructor
}
```

### Preventing copy ctor creation

```cpp
class A {
  public:
    A(A& b) = default; // Force compiler to not create a copy ctor
}
```

### Illegal copy contructor

```cpp
class A {
  private:
    A(A& b) {}; // Making the copy contructor illegal
}
```

## References

- [Copy Ctor](https://en.cppreference.com/w/cpp/language/copy_constructor)
