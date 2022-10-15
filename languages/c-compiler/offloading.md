
## Usage

```
## GCC 

gcc -o test test.cc -fopenmp -foffload=nvptx-none
gcc -o test test.cc -fopenmp -foffload=amdgcn-amdhsa -foffload-options=amdgcn-amdhsa=-march=gfx906


## Clang

// This is how to compiler, out of the box support may not be present

clang++ -o test test.cc -target x86_64-pc-linux-gnu -fopenmp -fopenmp-targets=amdgcn-amd-amdhsa -Xopenmp-target=amdgcn-amd-amdhsa -march=gfx906
clang++ -o test test.cc -target x86_64-pc-linux-gnu -fopenmp -fopenmp-targets=nvptx-none

# Nvidia HPC Compiler
nvc++ -o test test.cc -mp=gpu

# AMD AOCC Compiler

// Clang is wrapped
clang++ -o test test.cc -target x86_64-pc-linux-gnu -fopenmp -fopenmp-targets=amdgcn-amd-amdhsa -Xopenmp-target=amdgcn-amd-amdhsa -march=gfx906

// AMD AOCC may support this, but Nvidia target has to be installed manually
clang++ -o test test.cc -target x86_64-pc-linux-gnu -fopenmp -fopenmp-targets=nvptx-none

```

## Useful resources

1. https://github.com/SOLLVE/sollve_vv.git
2. https://github.com/pc2/OMP-Offloading
3. https://www.openmp.org/wp-content/uploads/2021-10-20-Webinar-OpenMP-Offload-Programming-Introduction.pdf
4. https://www.archer.ac.uk/training/course-material/2019/06/AdvOpenMP-manch/L10-OpenMPTargetOffload.pdf
5. https://www.olcf.ornl.gov/wp-content/uploads/2021/08/ITOpenMP_Day1.pdf
6. https://www.nas.nasa.gov/hecc/assets/pdf/training/OpenMP4.5_3-20-19.pdf

## Info from compilers

https://www.openmp.org/resources/openmp-compilers-tools/

1. https://gcc.gnu.org/onlinedocs/gcc/C-Dialect-Options.html#index-foffload-options
2. https://openmp.llvm.org/SupportAndFAQ.html
3. https://gcc.gnu.org/wiki/Offloading


## Nvidia GPU Offloading

1. https://github.com/MentorEmbedded/nvptx-tools
2. https://gist.github.com/kristerw/4e9a735f2d755ffa73f9bf27edbf3c29

## Ready to go offloading Compilers

1. Nvidia HPC compiler offloads to Nvidia cards out of the box
2. AMD AOCC compiler offloads to Radeon cards out of the box


