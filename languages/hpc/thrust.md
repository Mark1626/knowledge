# Thrust

[Back](../../index.md#hpc){: .button}

## Introduction

Thrust is a C++ library that allows Cuda, and OpenMP to be used underneath. Thrust is supposed to increase productivity compared to Cuda, and it is possibility to interpolate between Cuda.

## Overview

### Data representation

Data in the host is represented as `host_vectors` and in the device is represented as `device_vectors`. Data transfor from host to device and device to host can be done directly through assignment.

```cpp
int N = 10;
thrust::host_vector<float> arr(N);
thrust::generate(arr.begin(), arr.end(), rand);

thrust::device_vector<float> arr_d(N);

// Data transfer from host to device
arr_d = arr;
```

### Cuda Device Memory Interpolation

Memory allocated with cuda can be converted into thrust device pointers and can be used in thrust APIs

```cpp

float* ptr;
cudaMalloc(&ptr, sizeof(float) * 1000);

thrust::device_ptr<float> d_ptr = thrust::device_pointer_cast(ptr);

d_ptr[0] = 1;

cudaFree(ptr);

```

### Challenges

1. Creation of `host_vector`

There needs to be a way to convert an existing `vector` or memory allocated in the host to host_vectors if the high level 

2. async

Cuda API calls get added to a cuda stream and are async, the host will not have to wait unless a synchronize is present. **Thrust by default is not async**. In Thrust `THRUST_CPP_DIALECT >= 2011` std::async can be used to achieve async

3. Stream synchronization

Stream synchronization happens after an algorithm returns, this can be customized but the default is synchronizes the stream


## References

- https://nvidia.github.io/thrust/
- https://docs.nvidia.com/cuda/thrust/index.html
- https://rocmdocs.amd.com/en/latest/ROCm_API_References/Thrust.html

