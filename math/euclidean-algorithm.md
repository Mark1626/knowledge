# Euclidean Algorithm

[Back](../index.md){: .button}

Euclidean Algorithm is used to calculate the gcd of two numbers x, y 

Example

```cpp
int gcd(int x, int y) {
    while(y !=0)
        t = y
        y = x % y
        x = t
    return x
}
```

### See Also

- [Extended Euclidean Algorithm](./extended-euclidean.md)
