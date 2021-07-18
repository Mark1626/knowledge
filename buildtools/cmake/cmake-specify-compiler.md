# CMake Specify Compiler

[Back](../../index.md#cmake){: .button}

+ `cmake -DCMAKE_C_COMPILER:FILEPATH=/path/to/gcc-11 -DCMAKE_CXX_COMPILER:FILEPATH=/path/to/g++-11 ..`
+ `export CC=/path/to/gcc-11`
+ `export CXX=/path/to/gcc-11`
+ `make <target>`

> **Note:** `CMAKE_C_COMPILER` **should not be set** in `CMakeLists` with `set` instead we pass it as an argument and get it checked in `CMakeCache`

See [this question](https://discourse.cmake.org/t/proper-way-to-set-compiler-and-language-standard-in-cmake/2756) and [this stackoverflow question](https://stackoverflow.com/questions/17275348/how-to-specify-new-gcc-path-for-cmake)
