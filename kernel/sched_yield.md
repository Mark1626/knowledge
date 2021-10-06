# sched_yield

[Back](../index.md#kernel){: .button}

`sched_yield` causes the calling thread to give up the CPU. It is moved to the end of the queue and a new thread gets to run

## Usage

```
#include <sched.h>

int sched_yield(void);
```

This can be a performance issue if used incorrectly and can be seen in perf events as symbol `__sched_yield`

## Reference

[sched_yield](https://man7.org/linux/man-pages/man2/sched_yield.2.html)
