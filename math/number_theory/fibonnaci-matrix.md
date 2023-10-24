# Generaling the Fibonnaci Q Matrix

[Back](../math.md){: .button}

Complexity of computing the nth number is N^3 from the matrix multiplication

The fibonnaci numbers can be represented as a difference equation

```
- For Fn = Fn-1 + Fn-2
((1 1) (1 0))

nth element can be found with
(((1 1) (1 0)) ^ n) * (1 1)

------------

- For Fn = Fn-2 + Fn-3
((1 1 0) (0 1 1) (1 0 0))

nth element can be found with
(((1 1) (1 0)) ^ n) * (1 1)
(((1 1 0) (0 1 1) (1 0 0)) ^ n) * (1 1 1)

----------

- For Fn = Fn-3 + Fn-4
((1 1 0 0) (0 1 1 0) (0 0 1 1) (1 0 0 0))

nth element can be found with
(((1 1 0 0) (0 1 1 0) (0 0 1 1) (1 0 0 0)) ^ n) * (1 1 1 1)

------------

- For Fn = Fn-6 + Fn-7
((1 1 0 0 0 0 0) (0 1 1 0 0 0 0) (0 0 1 1 0 0 0) (0 0 0 1 1 0 0) (0 0 0 0 1 1 0) (0 0 0 0 0 1 1)  (1 0 0 0 0 0 0))

```

