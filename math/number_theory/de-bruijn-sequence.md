# De Bruijn Sequence

[Back](../math.md){: .button}

A de bruijn sequence of order n and size-k alphabet A is a cyclic sequence of every 
possible length-n string on A occurs exactly once as a substring

The total possibilites of sequence B(k, n) is `(k!)^(k^n) / (k^n)`

Ignoring rotations the total possibilities for `k=2` is `2^(2^(n-1) - n)` [OEIS](https://oeis.org/A016031)
