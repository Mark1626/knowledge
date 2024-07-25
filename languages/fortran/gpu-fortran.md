# Fortran and GPUs

[Back](../../index.md#fortran)

## Cuda

PGI Compilers and Tools used to develop the **_pgfortran_** compiler, it requires a license to use. This was later merged into Nvidia's HPC SDK where it now resides, this also requires signing a EULA with Nvidia

### Resources

**CUDA Fortran for Scientists and Engineers** - https://fortranwiki.org/fortran/show/CUDA+Fortran+for+Scientists+and+Engineers

**CUDA Fortran Intro** - https://www.pgroup.com/blogs/posts/cuda-fortran-intro.htm

Cuda in **pgfortran** is less verbose than the C/C++ API.

##  HIP Fortran

This was originally developed by FluidNumerics https://github.com/FluidNumerics

This is currently part of **_ROCmSoftwarePlatform_**.

This allows for interface to HIP, and HIP can target both Cuda and AMD GPUs. The reduction in verbosity in HIP Fortan is not similar to Cuda fortran.

Kernels would be written in HIP APIs (C++) and would be called in fortran.

https://github.com/ROCmSoftwarePlatform/hipfort/tree/master/test

## Comments

Both these are techniques are ways of using GPUs with fortran

A single codebase multi GPU platform would be possible with hipfort although it does not have a simplicity pgfortran

The approach taken by hipfort seems simpler, the question of adoption depends on the willingness to use fortran

### Resources

https://github.com/FluidNumerics/hip-fortran
https://github.com/ROCmSoftwarePlatform/hipfort

