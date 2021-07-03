# Alias Analysis

[Back](../../index.md#common){: .button}

Alias analysis is used to determine if a memory can be accessed in more than one way

## Type Based Alias Analysis

The behaviour of alias analysis in typed languages like C, C++ is called type based alias analysis

In C, aliasing a (int\*) to (float\*) is **undefined** behaviour. This can be made as a definite behaviour by setting `fno-strict-aliasing` and turning off type based alias analysis

