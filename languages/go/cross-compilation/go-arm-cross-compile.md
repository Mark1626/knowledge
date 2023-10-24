## Cross Compilation to Raspberry Pi(ARMv7)


[Back](../go.md){: .button}


### Example Makefile
```make
.PHONY: build

build:
	env GOOS=linux GOARCH=arm go build
```
