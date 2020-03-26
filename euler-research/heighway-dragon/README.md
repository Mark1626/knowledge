## Heighway Dradon

[Heighway Dragon](https://en.wikipedia.org/wiki/Dragon_curve)

Using the iterative method from wikipedia

## Theory

```
1st iteration: D0: R
2nd iteration: D1: R R L
3rd iteration: D2: R R L R R L L
4th iteration: D3: R R L R R L L R R R L L R L L
```

If we translate that into direction we move `U D L R` then

```
1st iteration: D0: U
2nd iteration: D1: U R
3rd iteration: D2: U R D R
4th iteration: D3: U R D R D L D R
5th iteration: D4: U R D R D L D R D L U L D S D R
```

or rotating the curve 90deg each iteration causes

```
U -> R
R -> D
D -> L
L -> U
```

```
1st iteration: D0: R
2nd iteration: D'1: R D
3rd iteration: D'2: R D L D
```

This is recucsive hence

```
U -> R -> D -> L
R -> D -> L -> U
D -> L -> U -> R
L -> U -> R -> D
```

We can represent it as a structure `{ U: 1, R: 3, D: 3, L: 1 }`

The the structure can be visualized as something similar to a pascal triangle 
```
        1
      1  1
    1  2  1
  1  3  3  1
  2  4  6  4
  6  6 10 10
  16 12 16 20
```

## Arriving at the nth point

To arrive at the `10th` point

`(16 - 6) => (D4 - 6) => (D4 - (8 -2)) => (D4 - (D'3 - D''1))`
