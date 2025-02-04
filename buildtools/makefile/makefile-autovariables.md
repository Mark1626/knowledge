# Makefile Automatic Variables

[Back](../../index.md#build-tools){: .button}

- **DEPS**: This is used to specify a dependency list; ie headers
- **$@**: Tells to take the name of the file to the left of :
- **$^**: Takes the content from the right of the :
- **$<**: Takes the first item of dependency list
- **$(@D)**: Directory the target should go into
- **$?**: List of all dependencies that are newer than the target


## Example

```
out/test: test.c
  mkdir $(@D)
  $(CXX) -o $@ $^
```

## References

- [Make Automatic Variables](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html#Automatic-Variables)
