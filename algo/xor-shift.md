# Xor Shift Random number generator

[Back](../index.md#algo)

```cpp
uint64_t xoshiro256ss(uint64_t s[4])
{
    uint64_t x = s[1] * 5;
    uint64_t r = ((x << 7) | (x >> 57)) * 9;
    uint64_t t = s[1] << 17;
    s[2] ^= s[0];
    s[3] ^= s[1];
    s[1] ^= s[2];
    s[0] ^= s[3];
    s[2] ^= t;
    s[3] = (s[3] << 45) | (s[3] >> 19);
    return r;
}
```

## See Also

- [XOR Shift](https://en.wikipedia.org/wiki/Xorshift)
