# Move Contructor

Move ctors steal or copy ownership of dynamically created resources(file descriptors, TCP sockets, threads) held by the argument

```cpp
class A {
  string s;
  int n;
  public:
  A(A&& o) : s(std::move(o.s)), n(std::exchange(o.n, 0)) {}
}
```
