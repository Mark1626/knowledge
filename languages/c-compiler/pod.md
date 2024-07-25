# Plain old data structure or Passive data structure

[Back](../../index.md#ccpp-compilers){: .button}

POD refers to a data structure containing only data members and no member functions(constructors, virtual methods)

```
struct Point {
  int x,y,z;
};
class complex2 {
  float v[4];
};
```

## References

- [POD](https://en.wikipedia.org/wiki/Passive_data_structure)
