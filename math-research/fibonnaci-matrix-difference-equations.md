# Matrix Difference Equation for calculating Fibonnaci like sequences

[Back](../../index.md){: .button}

An nth order fibonnaci series can be defined as

```
- Order 2 Fn = Fn = Fn-1 + Fn-2
- Order 3 Fn = Fn = Fn-2 + Fn-3
- Order 4 Fn = Fn = Fn-3 + Fn-4

Idx  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
O2  `1  1  2  3  5  8 13 21 34 55 89`
O3  `1  1  1  2  2  3  4  5  7  9 12 16 21`
O4  `1  1  1  1  2  2  2  3  4  4  5  7  8  9 12 15`
```

This can be written as a matrix difference equation

```
- For Fn = Fn-1 + Fn-2
((1 1) (1 0))

- For Fn = Fn-2 + Fn-3
((1 1 0) (0 1 1) (1 0 0))

- For Fn = Fn-3 + Fn-4
((1 1 0 0) (0 1 1 0) (0 0 1 1) (1 0 0 0))

so the nth element can be found as

(1 1 0 0)             (1)       (Fn+3)
(0 1 1 0)   ^  n  *   (1)   =   (Fn+2)
(0 0 1 1)             (1)       (Fn+1)
(1 0 0 0)             (1)       (Fn)


```



## Reducing complexity of computation

A property of this sequence

```
  1            2           3           4

1 1 0 0     1 2 1 0     1 3 3 1     2 4 6 3
0 1 1 0     0 1 2 1     1 1 3 2     3 2 4 3
0 0 1 1     1 0 1 1     2 1 1 1     3 3 2 1
1 0 0 0     1 1 0 0     1 2 1 0     1 3 3 1

  5               6               7    

5 6 10 6     11 11 16 10      21 22 27 16
6 5 6  4     10 11 11 6       16 21 22 11
4 6 5  2     6  10 11 5       11 16 21 11
2 4 6  3     5  6  10 6       11 11 16 10

Observing the common pattern, the matrix is of the form

N = 2

a b
b c

----------------

N = 3

a b c
c a d
d c e

----------------

N = 4

a b c d
d a b e
e d a f
f e d g

----------------

N = 5

a b c d e
e a b c f
f e a b g
g f e a h
h g f e i

---------------------

N = n

x[0]    x[1]    x[2]    x[3]  x[4]  .....    x[n-1]
x[n-1]  x[0]    x[1]    x[2]  x[3]  .....    x[n]
x[n-2]  x[n-1]  x[0]    x[1]  x[2]  .....    x[n+1]
x[n-3]  x[n-2]  x[n-1]  x[0]  x[1]  .....     x[n+2]
....
....
x[n*n - 2]  x[n*n - 3]  x[n*n - 4]  ..... x[n-1] x[0]  x[1]  .....     x[n*n - 1]

```

It is enough to track only `(N*N - 1)` elements, reducing the complexity from `N**3` to `N**2`
