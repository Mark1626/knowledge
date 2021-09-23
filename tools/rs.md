# rs

[Back](../index.md#rs){: .button}


Reshape a data array. Works for 2D arrays only

```bash
# Format input into a 10x10 matrix
jot - 1 100 | rs 10 10
```

```
# Resize arr in vi
:1,$!rs 0 9
```
