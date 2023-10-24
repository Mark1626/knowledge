# Make string functions

[Back](../buildtools.md){: .button}

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
