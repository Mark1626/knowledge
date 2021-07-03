# auto vs decltype

[Back](../../index.md#cpp){: .button}

```cpp
int x;
const int& crx = x;

typedef decltype(x) type_x;
// Type is int
type_x a1 = 10;
// Type is int
auto a2 = x;

typedef decltype(crx) type_crx;
// Type is const int&
type_crx b1 = 10;
// Type is int
auto b2 = crx
```

## Reference

- [auto and decltype](http://thbecker.net/articles/auto_and_decltype/section_06.html)
