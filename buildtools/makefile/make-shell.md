# Execute Shell

[Back](../buildtools.md){: .button}

Store the stdout from command into variable

```
NAME = $(shell echo "mark")

print:
  echo "This is $(NAME)"

```

Reading compile flags stored in a file

> Note: I usually have my compile flags in a file so I can do `cc $(< ~/flags)`, reading this file in make as well makes sure that I don't have to repeat myself writing flags

```
CXXFLAGS=$(shell cat ~/flags)

```

