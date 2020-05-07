# Using Go Lib in C

- Mark your functions with

```go
import "C"

//export add
func add(a int, b int) int {
	return a + b
}
```

- Build your go project with

```make
build:
	rm -f libarith.a libarith.h
	go build -buildmode=c-archive -o libarith.a
```

- When building your C project use the `.a` you just created

```make
build:
	gcc -Wall -Isrc -Lsrc -larith main.c -o main
```
