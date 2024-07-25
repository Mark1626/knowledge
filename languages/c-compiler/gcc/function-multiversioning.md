# Function Multiversioning

[Back](../../../index.md#gcc-specific){: .button}

```c
__attribute__ ((target ("default")))
int foo ()
{
	// The default version of foo.
	return 0;
}

__attribute__ ((target ("sse4.2")))
int foo ()
{
	// foo version for SSE4.2
	return 1;
}
```

## Reference

[GCC Function Multiversioning](https://gcc.gnu.org/wiki/FunctionMultiVersioning)
