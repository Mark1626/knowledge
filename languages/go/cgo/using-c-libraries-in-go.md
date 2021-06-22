# Using Shared Objects and Dynamic Sinked Objects in Go

[Back](../../../index.md){: .button}

> tags: go,c

### Makefile

```make
dynamic:
> rm -f libarith.dylib
> gcc -c -fPIC -Iinclude src/arith.c
> gcc -dynamiclib -o libarith.dylib arith.o
> rm -f arith.o

shared:
> rm -f libarith.so
> gcc -c -fPIC -Iinclude src/arith.c
> gcc -shared -Wl -o libarith.so arith.o
> rm -f arith.o
```

### Usage in Go

```go
package main

/*
#cgo CFLAGS: -Iinclude
#cgo LDFLAGS: -L. -larith
#include "arith.h"
*/
import "C"
import (
	"fmt"
)

func main() {
	fmt.Println("Sum", C.add(5, 4))
	fmt.Println("Diff", C.sub(5, 4))
	fmt.Println("Product", C.mul(5, 4))
}
```
