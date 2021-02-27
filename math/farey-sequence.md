# Farey Sequence

[Back](../index.md){: .button}

The Farey sequence of order n is a sequence of completely reduced fractions between 0 and 1

Excluding the 0 and 1, the number of terms equals the euler's totient function `phi(n)`

```
Order 5

0, 1/5, 2/5, 3/5, 4/5, 1
```

Given two entries `a/b` and `c/d` the next term `p/q` can be computed as

```cpp
p = floor((n+b)/d) * c - a
q = floor((n+b)/d) * d - b
```

### Stern Brocot Tree

- [Stern Brocot Tree](./stern-brocot-tree.md)
- [Euler's totient function](./euler-totient-function.md)
