# Euler's totient function

Euler's totient function counts the positive integers up to n that are relatively prime to n


```
If p is a prime number `phi(p) = p-1`

phi(n) = n * Π (1 - 1/p) { p is the prime factor of n }

  or

phi(n) = n * (phi(p1) * phi(p2) * ... * phi(pn)) / (p1 * p2 * ... * pn)
  { p1, p2, pn are the prime factor of n }
```

### Other properties

```
  ∑phi(d) = n {where d1, d2 are the divisors of n}
```

### See also

- [Euler's theorm](./euler-theorm.md)
