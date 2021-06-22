# Flags

## Basic

- `-S` - Stop compilation process at assembly and output a `.s` assembly file
- `-E` - Stop compilation process at preprocessor step
- `-c` - Run the entire compilation and create object file
- `-o` - Links multiple `.o` files into a single executable
- `-shared` - Specify to create a shared library `.so`
- `-fPIC` - Position Independent Code, this is specified when creating a shared library
- `-Wl,option` - Pass `option` to the linker eg) `-Wl,rpath=dir`
- `-Wl,rpath=dir` - rpath adds a path to runtime libraries

[Shared library](./shared-library.md)

## Search

- `-Idir` - Add a directory to the list of directory where headers are present
- `-isystem dir` - Add a directory to the list of directories where system headers are present
- `-llibrary` - Search for a library when linking
- `-Ldir` - Add directory to the list when searching for libraries defined in `-l`

## Warnings

- `-Wall` - Warn all turns on most complier warnings
- `-Wextra` - Include extra compiler warnings
- `-Werror` - Treat warnings as errors

## Standard

- `-std=c++11` - Sets the standard as C++11
- `-pedantic` - Using this will cause a compiler to throw an error when using features which conflict with ISO C or ISO C++

## OpenMP

- `-fopenmp` - Mention to the compiler to use OpenMP

(Needed in MacOS)
- `-Xpreprocessor`
- `-lomp`

## Optimization

- `-O<n>` - n is the level of optimization `-O3`, `-O1`, etc


## Other

- `-fverbose-asm`

