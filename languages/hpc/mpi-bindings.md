# MPI Bindings

[Back](../../index.md#hpc)

`mpirun` can make process bind to physical cores or logical cores, it can also be used to map multiple cores to a process. Number of cores to be bound can be set as Processing Element(PE).

In OpenMPI `--report-bindings` can be used to display the bindings.

```sh
# Map by NUMA then assign one PE(physical core) per process
mpirun -n 4 --map-by numa:PE=1 --report-bindings ./a.out

# Map by NUMA then assign two PE(physical core) per process
mpirun -n 4 --map-by numa:PE=2 --report-bindings ./a.out

# Map by available hardware thread or logical core per process
mpirun -n 4 --bind-to hwthread --map-by numa --report-bindings ./a.out
```

## Reading

https://nekodaemon.com/2021/02/05/Understanding-MPI-map-by-and-bind-to-option/
