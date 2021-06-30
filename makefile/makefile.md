# makefile

[Back](../index.md){: .button}

## Learnings

### Auto Linking programs

```make
main: a.o b.o
```

### RECIPEPREFIX

By default Makefiles are with tabs. The RECIPEPREFIX can be used to change
it

```make
ifeq ($(origin .RECIPEPREFIX), undefined)
  $(error This Make does not support .RECIPEPREFIX. Please use GNU Make 4.0 or later)
endif
.RECIPEPREFIX = >

build:
> npm install
> npm build
```

### DELETE_ON_ERROR

If the Make rule fails, it's target file is destroyed

```make
.DELETE_ON_ERROR:
.RECIPEPREFIX = >

build:
> npm install
> npm build
```

### ONESHELL

Makes the recipe is run as one single shell session, rather than one new shell per line

```make
.ONESHELL:
.RECIPEPREFIX = >

build:
> npm install
> npm build
```

### Makeflags

```make
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
```

## References

- https://tech.davis-hansson.com/p/make/
- https://www.gnu.org/software/make/manual/html_node/Catalogue-of-Rules.html
