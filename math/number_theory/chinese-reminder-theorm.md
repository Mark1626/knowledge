# Chinese remainder theorem

[Back](../math.md){: .button}

```
given:
  x ≡ a1 (mod n1)
  x ≡ a2 (mod n2)
when:
  n1 and n2 are coprime
  m1*n1 + m2*n2 = 1
    m1 and m2 can be computed with extended euclidean algorithm
then:
  x = a1*m2*n2 + a2*m1*n1
```

```groovy
given:
  x ≡ a1 (mod n1)
  x ≡ a2 (mod n2)
  ...
  x ≡ ai (mod ni)
when:
  all ni are pairwise coprime
then:
  // Example from rosettacode.org
  int chinese_remainder(int *n, int *a, int len)
  {
    int p, i, prod = 1, sum = 0;
  
    for (i = 0; i < len; i++) prod *= n[i];
  
    for (i = 0; i < len; i++) {
      p = prod / n[i];
      sum += a[i] * mul_inv(p, n[i]) * p;
    }
  
    return sum % prod;
  }
  int n[] = { 3, 5, 7 };
	int a[] = { 2, 3, 2 };
  chinese_remainder(n, a, 3)
```

### See Also

- [Extended Euclidean Algorithm](./extended-euclidean.md)
