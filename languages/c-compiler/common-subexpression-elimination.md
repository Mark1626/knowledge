# Common Subexpression Elimination

[Back](./c-compiler.md){: .button}

In compilers `Common Subexpression Elimination` is an optimization where a compiler searches for instances of identical expressions, and replaces them with a single variable for the computed value.

```
a = b * c + g;
d = b * c + e;

// can be optimized as 

tmp = b * c;
a = tmp + g;
d = tmp + e;
```

This is present in GCC in optimization levels higher than `-O2`, can be added manually with `-fgcse`

## References

- [Common Subexpression Elimination](https://en.wikipedia.org/wiki/Common_subexpression_elimination)
