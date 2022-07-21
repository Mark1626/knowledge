# Include Makefile from other directory

[Back](../../index.md#makefile-makefile){: .button}

```makefile
# $(ROOT)/benchmark/Makefile
benchmark: benchmark.c

```

```makefile
# $(ROOT)/Makefile

include benchmark/Makefile

```
