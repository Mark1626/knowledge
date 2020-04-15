## Cross Compilation to Raspberry Pi(ARMv7)



### Example Makefile
```make
.PHONY: build

build:
	env GOOS=linux GOARCH=arm go build
```
