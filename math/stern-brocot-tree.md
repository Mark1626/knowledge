# Stern Brocot Tree

[Back](../index.md){: .button}

Stern brocot tree is related to Farey sequence

A stern brocot tree is an infinite binary tree where elements are ordered left to right.
When traversed the elements form the farey sequence.

```hs
stern::Int->[(Int,Int)]
stern n = (1,1):go 1 2
    where
      go a b
        |n<b=[]
	|otherwise = (a,b):go a (a+b) ++ go b (a+b)
```

### See Also

- [Farey Sequence](./farey-sequence.md)
