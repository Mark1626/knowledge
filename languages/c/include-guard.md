# Include Guard

[Back](../../index.md){: .button}

> **Note:** This can only prevent this within the same compilation unit

In C include guards are use to prevent double inclusions

```cpp
// euler.h
#ifndef EULER_H
#define EULER_H

struct foo {
    int member;
};

#endif /* EULER_H */

// ---
// parent.h
#include "euler.h"

// ---
// child.c
#include "parent.h"
#include "euler.h"
```

Without include guard the struct would be created twice

