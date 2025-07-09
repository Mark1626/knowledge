# CMake Address Sanitizer

[Back](../../index.md#cmake)

```cmake
target_compile_options(scratch PRIVATE
  -fsanitize=address
)
target_link_options(scratch PRIVATE
  -fsanitize=address
)
```

