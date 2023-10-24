# Einstein Notation

[Back](../math.md)


The Einstein notation is available in numpy as `np.einsum`

2D matrix multiplication can be represented as

```py
np.einsum("ik,kj->ij", A,B)
```

When using `cupy.einsum` the operation can utilise tensor cores in the GPU

## Reading

1. https://towardsdatascience.com/einstein-index-notation-d62d48795378
2. 


