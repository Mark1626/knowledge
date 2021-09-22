# OpenMP

[Back](../../index.md#hpc){: .button}

## Environment variables

```
export OMP_NUM_THREADS=4
```

## Debugging

Download the debug symbols of `libgomp`

```
apt-get install libgomp1-dpkg
```

Set the environment variable `GOMP_DEBUG`.

```
export GOMP_DEBUG=1
```

## FAQ

- What is the difference between `critical` and `atomic`

Atomic is used for a single assignment, where as critical is used for a section.
Atomic can only be used for `++x;`, `--x;`, `x++;`, `x--;`, `x binop= expr;`, `x = x binop expr` or `x = expr binop x`.

[Stackoverflow reference](https://stackoverflow.com/questions/7798010/what-is-the-difference-between-atomic-and-critical-in-openmp)

## Reading

- [OpenMP Environment Variables](https://gcc.gnu.org/onlinedocs/libgomp/Environment-Variables.html#Environment-Variables)
- [OpenMP Cancel](http://jakascorner.com/blog/2016/08/omp-cancel.html)
