# Matrix Difference Equation for calculating Fibonnaci like sequences

[Back](../../index.md){: .button}

<script type="text/javascript" id="MathJax-script" async
  src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
</script>


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

- For $ F_{n} = F_{n-1} + F_{n-2} $

$$
  \begin{bmatrix}
  1 & 1 \\
  1 & 0
  \end{bmatrix}
$$

- For $ F_{n} = F_{n-2} + F_{n-3} $

$$
  \begin{bmatrix}
  1 & 1 & 0 \\
  0 & 1 & 1 \\
  1 & 0 & 0
  \end{bmatrix}
$$

- For $ F_{n} = F_{n-3} + F_{n-4} $
$$
  \begin{bmatrix}
  1 & 1 & 0 & 0 \\
  0 & 1 & 1 & 0 \\
  0 & 0 & 1 & 1 \\
  1 & 0 & 0 & 0
  \end{bmatrix}
$$

so the nth element can be found as

$$
  \begin{bmatrix}
  1 & 1 & 0 & 0 \\
  0 & 1 & 1 & 0 \\
  0 & 0 & 1 & 1 \\
  1 & 0 & 0 & 0
  \end{bmatrix}

  ^ n

  *

  \begin{bmatrix}
  1 \\
  1 \\
  1 \\
  1
  \end{bmatrix}

  =

  \begin{bmatrix}
  F_{n+3} \\
  F_{n+2} \\
  F_{n+1} \\
  F_{n}
  \end{bmatrix}

$$


## Reducing complexity of computation

A property of this sequence


$$
N_{1}
=
\begin{bmatrix}
1 & 1 & 0 & 0 \\
0 & 1 & 1 & 0 \\
0 & 0 & 1 & 1 \\
1 & 0 & 0 & 0
\end{bmatrix}

N_{2}
=
\begin{bmatrix}
1 & 2 & 1 & 0 \\
0 & 1 & 2 & 1 \\
1 & 0 & 1 & 1 \\
1 & 1 & 0 & 0
\end{bmatrix}

N_{3}
=
\begin{bmatrix}
1 & 3 & 3 & 1 \\
1 & 1 & 3 & 2 \\
2 & 1 & 1 & 1 \\
1 & 2 & 1 & 0
\end{bmatrix}

N_{4}
=
\begin{bmatrix}
2 & 4 & 6 & 3 \\
3 & 2 & 4 & 3 \\
3 & 3 & 2 & 1 \\
1 & 3 & 3 & 1
\end{bmatrix}

\\

N_{5}
=
\begin{bmatrix}
5 & 6 & 10 & 6 \\
6 & 5 & 6 & 4 \\
4 & 6 & 5 & 2 \\
2 & 4 & 6 & 3
\end{bmatrix}

N_{6}
=
\begin{bmatrix}
11 & 11 & 16 & 10 \\
10 & 11 & 11 & 6 \\
6 & 10 & 11 & 5 \\
5 & 6 & 10 & 6
\end{bmatrix}

N_{7}
=
\begin{bmatrix}
21 & 22 & 27 & 16 \\
16 & 21 & 22 & 11 \\
11 & 16 & 21 & 11 \\
11 & 11 & 16 & 10
\end{bmatrix}

$$

Observing the common pattern, the matrix is of the form

N = 2

$$
\begin{bmatrix}
a & b \\
b & c
\end{bmatrix}
$$

----------------

N = 3

$$
\begin{bmatrix}
a & b & c \\
c & a & d \\
d & c & e
\end{bmatrix}
$$

----------------

N = 4

$$
\begin{bmatrix}
a & b & c & d \\
d & a & b & e \\
e & d & a & f \\
f & e & d & g
\end{bmatrix}
$$

----------------

N = 5

$$
\begin{bmatrix}
a & b & c & d & e \\
e & a & b & c & f \\
f & e & a & b & g \\
g & f & e & a & h \\
h & g & f & e & i \\
\end{bmatrix}
$$

---------------------

N = n

$$
\begin{bmatrix}
x[0]   & x[1]   &  x[2]   & x[3] & x[4] & .....  &  x[n-1] \\
x[n-1] & x[0]   &  x[1]   & x[2] & x[3] & .....  &  x[n] \\
x[n-2] & x[n-1] & x[0]   & x[1] & x[2] & .....  &  x[n+1] \\
x[n-3] & x[n-2] & x[n-1] & x[0] & x[1] & .....  &   x[n+2] \\
.... \\
.... \\
x[n*n - 2] & x[n*n - 3] & x[n*n - 4] & ..... & x[n-1] & x[0] & x[1] & .....   &  x[n*n - 1]
\end{bmatrix}
$$

It is enough to track only $$ (N*N - 1) $$ elements, reducing the complexity from $$ N ^ 3 $$ to $$ N^2 $$

