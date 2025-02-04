# CSS Transforms

[Back](../../index.md){: .button}

## Matrix to Matrix3D mapping

The `3x3` matrix 
$$
  \begin{bmatrix}
  a & c & tx \\
  b & d & ty \\
  0 & 0 & 1 \\
  \end{bmatrix}
$$
it used for 2D transforms can be represented as
$$
  \begin{bmatrix}
  a & c & 0 & e \\
  b & d & 0 & f \\
  0 & 0 & 1 & 0 \\
  0 & 0 & 0 & 1
  \end{bmatrix}
$$
the `4x4` matrix used in 3D transforms as well

## Translate

```css
transform: translate3d(41px, 39px, 23px)
/* equivalent to */
transform: matrix3D(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 41, 39, 23, 1)
```

$$
  \begin{bmatrix}
  1 & 0 & 0 & tx \\
  0 & 1 & 0 & ty \\
  0 & 0 & 1 & tz \\
  0 & 0 & 0 & 1
  \end{bmatrix}
  \begin{bmatrix}
  x \\
  y \\
  z \\
  1
  \end{bmatrix}
  = 
  \begin{bmatrix}
  x + tx \\
  y + ty \\
  z + tz \\
  1
  \end{bmatrix}
$$

## Scale

```css
transform: translate3d(1.5, 1.5, 1.5)
/* equivalent to */
transform: matrix3D(1.5, 0, 0, 0, 0, 1.5, 0, 0, 0, 0, 1.5, 0, 0, 0, 0, 1)
```

$$
  \begin{bmatrix}
  sx & 0 & 0 & 0 \\
  0 & sy & 0 & 0 \\
  0 & 0 & sz & 0 \\
  0 & 0 & 0 & 1
  \end{bmatrix}
  \begin{bmatrix}
  x \\
  y \\
  z \\
  1
  \end{bmatrix}
  = 
  \begin{bmatrix}
  x . sx \\
  y . sy \\
  z . sz \\
  1
  \end{bmatrix}
$$

## Skew

```css
transform: skew(10deg, 10deg)
/* equivalent to */
/* tan(10deg) = 0.1763 */
transform: matrix3D(1, 0.1763, 0, 0, 0.1763, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)
```

$$
  \begin{bmatrix}
  1 & tan(\alpha) & 0 & 0 \\
  tan(\beta) & 1 & 0 & 0 \\
  0 & 0 & 1 & 0 \\
  0 & 0 & 0 & 1
  \end{bmatrix}
  \begin{bmatrix}
  x \\
  y \\
  z \\
  1
  \end{bmatrix}
  = 
  \begin{bmatrix}
  x + y . tan(\alpha) \\
  x . tan(\beta) + y \\
  z \\
  1
  \end{bmatrix}
$$

## Rotation

### RotateX

```css
transform: rotateX(30deg)
/* equivalent to */
/* sin(30deg) = 0.5, cos(30deg) = 0.866 */
transform: matrix3D(1, 0, 0, 0, 0, 0.866, -0.5, 0, 0, 0.5, 0.866, 0, 0, 0, 0, 1)
```

$$
  \begin{bmatrix}
  1 & 0 & 0 & 0 \\
  0 & cos(a) & -sin(a) & 0 \\
  0 & sin(a) & con(a) & 0 \\
  0 & 0 & 0 & 1
  \end{bmatrix}
  \begin{bmatrix}
  x \\
  y \\
  z \\
  1
  \end{bmatrix}
  = 
  \begin{bmatrix}
  x \\
  y.cos(a) - z.sin(a) \\
  y.sin(a) + z.cos(a) \\
  1
  \end{bmatrix}
$$

### RotateY

```css
transform: rotateY(30deg)
/* equivalent to */
/* sin(30deg) = 0.5, cos(30deg) = 0.866 */
transform: matrix3D(0.866, 0, 0.5, 0, 0, 1, 0, 0, -0.5, 0, 0.866, 0, 0, 0, 0, 1)
```

$$
  \begin{bmatrix}
  con(a) & 0 & sin(a) & 0 \\
  0 & 1 & 0 & 0 \\
  -sin(a) & 0 & cos(a) & 0\\
  0 & 0 & 0 & 1
  \end{bmatrix}
  \begin{bmatrix}
  x \\
  y \\
  z \\
  1
  \end{bmatrix}
  = 
  \begin{bmatrix}
  x.cos(a) + z.sin(a) \\
  y \\
  z.cos(a) - x.sin(a) \\
  1
  \end{bmatrix}
$$

### RotateZ

```css
transform: rotateZ(30deg)
/* equivalent to */
/* sin(30deg) = 0.5, cos(30deg) = 0.866 */
transform: matrix3D(0.866, -0.5, 0, 0, 0.5, 0.866, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1)
```

$$
  \begin{bmatrix}
  cos(a) & -sin(a) & 0 & 1 \\
  sin(a) & con(a) & 0 & 0 \\
  0 & 0 & 0 & 1 \\
  0 & 0 & 0 & 1
  \end{bmatrix}
  \begin{bmatrix}
  x \\
  y \\
  z \\
  1
  \end{bmatrix}
  = 
  \begin{bmatrix}
  x.cos(a) - y.sin(a) \\
  x.sin(a) + y.cos(a) \\
  z \\
  1
  \end{bmatrix}
$$

## Rotate 3D

Just with `rotateX`, `rotateY`, `rotateZ` we will run into [Gimbal Lock](https://en.wikipedia.org/wiki/Gimbal_lock). So there is a Rotate 3D to rotate around the axis of rotation a vector

```css
transform: rotate3D(1, 1, 1, 0)
```

$$
  \begin{bmatrix}
  1+(1-cos(a))(x^2-1) & z·sin(a)+xy(1-cos(a)) & -y·sin(a)+xz·(1-cos(a)) & 0 \\ 
  -z·sin(a)+xy·(1-cos(a)) & 1+(1-cos(a))(y^2-1) & x·sin(a)+yz·(1-cos(a)) & 0 \\
  ysin(a)+xz(1-cos(a)) & -xsin(a)+yz(1-cos(a)) & 1+(1-cos(a))(z2-1) & 0 \\
  0 & 0 & 0 & 1
  \end{bmatrix}
$$

## Reference
- [Understanding the css transforms matrix](https://dev.opera.com/articles/understanding-the-css-transforms-matrix/)
- [W3 Css Transforms Mathematical Description](https://www.w3.org/TR/css-transforms-1/#mathematical-description)
- [Gimbal Lock](https://en.wikipedia.org/wiki/Gimbal_lock)
- [Rodrigues' rotation formula](https://en.wikipedia.org/wiki/Rodrigues%27_rotation_formula#Derivation)
