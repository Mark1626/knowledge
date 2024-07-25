# Data Structure Alignment

[Back](../../index.md#generic){: .button}

[Data Structure Alignment](https://en.wikipedia.org/wiki/Data_structure_alignment)

Size of struct will differ based on compiler.

This struct in C will be 16 bytes

```c
typedef struct {
  int a;
  double b;
} Point;
```

This struct will be 12 bytes

```rust
#[derive(Serialize, Deserialize, Debug)]
struct Point{
    x: i32,
    y: f64,
}
```

Therefore a raw serialized data may not always be deserializable in a different compiler

