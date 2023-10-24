# Function pointer to pass function as argument

[Back](./c.md){: .button}

Came across this example

```c
int is_lst_term(int c);
int is_str_term(int c);
char* read_value(FILE *fp, int *c, int (*is_term)(int));
```

Found it nice to see an actual usage of function pointer

