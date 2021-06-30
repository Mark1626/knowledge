# Makefile Macros

[Back](../index.md){: .button}

- **DEPS**: This is used to specify a dependency list; ie headers
- **$@**: Tells to take the name of the file to the left of :
- **$^**: Takes the content from the right of the :
- **$<**: Takes the first item of dependency list
- **$(@D)**: Directory the target should go into


## Example

```
out/test: test.c
  mkdir $(@D)
  $(CXX) -o $@ $^
```

