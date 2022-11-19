# Cuda

[Back](../../index.md#hpc){: .button}

## Nvidia Tools Summary

[Nvidia Tools Summary](https://developer.nvidia.com/blog/transitioning-nsight-systems-nvidia-visual-profiler-nvprof/)

## Global Memory

[Efficient Global Memory Access](https://developer.nvidia.com/blog/how-access-global-memory-efficiently-cuda-c-kernels/)

## L1/Tex Cache + Shared Memory

[Using Shared Memory in Cuda](https://developer.nvidia.com/blog/using-shared-memory-cuda-cc/)

64 KB/SM in most architectures

192 KB/SM in A100 versus 128 KB/SM in V100

[Nvidia Ampere Architecture](https://images.nvidia.com/aem-dam/en-zz/Solutions/data-center/nvidia-ampere-architecture-whitepaper.pdf)

## Vectors

[Vector Memory Access](https://developer.nvidia.com/blog/cuda-pro-tip-increase-performance-with-vectorized-memory-access/)

## Coorperative groups

[Coorperative Groups](https://developer.nvidia.com/blog/cooperative-groups/)

## Reductions

[Faster parallel reductions in kepler](https://developer.nvidia.com/blog/faster-parallel-reductions-kepler/)

## Warp Instrinsics

[Warp Shuffle and Warp Vote Instrinsics](https://tschmidt23.github.io/cse599i/CSE%20599%20I%20Accelerated%20Computing%20-%20Programming%20GPUs%20Lecture%2018.pdf)

## CUB

[Reusable primitives](https://nvlabs.github.io/cub/)

## Cuda Streams

By default all cuda kernels use stream 0.

In an MPI like setup something like Nvidia MPS would be needed to balance load

[Nvidia MPS](https://docs.nvidia.com/deploy/mps/index.html)
[Cuda streams pitfalls](https://on-demand.gputechconf.com/gtc/2014/presentations/S4158-cuda-streams-best-practices-common-pitfalls.pdf)

## Cuda Floating Point

https://docs.nvidia.com/cuda/floating-point/index.html

## Stride Loops

- [Cuda Stride loop](https://developer.nvidia.com/blog/cuda-pro-tip-write-flexible-kernels-grid-stride-loops/)

