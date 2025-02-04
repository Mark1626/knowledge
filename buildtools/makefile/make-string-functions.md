# Make string functions

[Back](../../index.md#build-tools){: .button}

## wildcard

```
sources := $(wildcard $(source)/_*)
```

## patsubst

```
$(patsubst %.c,%.o,)
```

## subst

```make
x := $(subst ee,EE,teest)

dotfiles := $(subst $(source),$(output),$(sources))

$(output)/%: $(source)/%
	cp $< $(subst _,.,$@)
```
