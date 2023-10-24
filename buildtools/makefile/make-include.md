# Include Makefile from other directory

[Back](../buildtools.md-makefile){: .button}

```makefile
# $(ROOT)/benchmark/Makefile
benchmark: benchmark.c

```

```makefile
# $(ROOT)/Makefile

include benchmark/Makefile

```
