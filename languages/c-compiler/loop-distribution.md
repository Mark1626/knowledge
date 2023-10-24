# Loop distribution

[Back](./c-compiler.md){: .button}

```
Converts

DO I = 1, N
  A(I) = B(I) + C
  D(I) = E(I) * F
ENDDO

to

DO I = 1, N
   A(I) = B(I) + C
ENDDO
DO I = 1, N
   D(I) = E(I) * F
ENDDO
```

In GCC it can be added with the flag `-ftree-loop-distribution`

## Case Study

[GCC Loop Distribution Case Study](http://www.cri.ensmp.fr/classement/doc/E-279.pdf)

