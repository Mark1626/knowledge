# Creating a Shared Library

[Back](../../index.md){: .button}

Example Makefile

```makefile
.ONESHELL:
.DELETE_ON_ERROR:

CC = cc

IDIR = ../include
CFLAGS = -I$(IDIR) -Wall

LDIR = ../lib

OBJ = miller.o kummer.o prime.o

%.o: %.c $(DEPS)
  $(CC) -c -fPIC -o $@ $< $(CFLAGS)

euler: $(OBJ)
  $(CC) -shared -W1 -o $(LDIR)/libeuler.so $^ $(CFLAGS) $(LIBS)

clean:
  rm *.o

.PHONY: clean
```

