# C Compiler fast math

[Back](./c-compiler.md)

`-ffast-math` enables certain unsafe floating point optimizations, it is a collection of different flags. These optimization turn off IEEE 754 cases like NaN and infinity. It is usually better to enable specific flags based on the work load like `-funsafe-math-optimizations` `-fcx-limited-range`

## Further Reading

https://gcc.gnu.org/wiki/FloatingPointMath
