💡 document everything

# About
  
  A collection of tidbits on things I learn

---

# Contents
  
  There are #450 articles

---

# Categories
  
  
  + [Algorithm](#algorithm)
  + [Astronomy](#astronomy)
  + [ARM](#arm)
  + [Assembler](#assembler)
  + [Books](#books)
  + [Build Tools](#build-tools)
  + [Crypto](#crypto)
  + [Code Art](#code-art)
  + [Computer Architecture](#computer-architecture)
  + [Computer Science Research](#computer-science-research)
  + [Containers](#containers)
  + [Data](#ds)
  + [Data Structure](#data-structure)
  + [Design](#design)
  + [Digital Design](#digital-design)
  + [DSP](#dsp)
  + [Frontend](#frontend)
  + [Filesystem](#fs)
  + [Git](#git)
  + [GNU](#gnu)
  + [GNU Plot](#gnuplot)
  + [Graphics](#graphics)
  + [HPC](#hpc)
  + [Ideas](#ideas)
  + [IRC](#irc)
  + [Kernel](#kernel)
  + [Languages](#languages)
  + [LLM](#llm)
  + [Math](./math/math.md)
  + [Network](#network)
  + [Notebooks](#notebooks)
  + [Origami](./origami/origami.md)
  + [Papers](./papers/papers.md)
  + [Philosophy](#philosophy)
  + [Posix](#posix)
  + [Postgresql](./postgres/postgres.md)
  + [Platforms](#platforms)
  + [Psychology](#psychology)
  + [Quantum](#quantum)
  + [RFC](./rfc/rfc.md)
  + [SIMD](#simd)
  + [Sqlite](#sqlite)
  + [Tools](#tools)
  + [Unix](#unix)
  + [Vim](#vim)
  + [Web](#web)

---

## Algorithm

- [Boyer–Moore algorithm](./algo/bm.md)
- [Boyer–Moore–Horspool algorithm](./algo/bmh.md)
- [XOR Shift Rotate](./algo/xor-shift.md)
- [Kadane](./algo/kadane.md)
- [Chaitin-Briggs coloring](./algo/chaitin-briggs-coloring.md)
- [Chow’s priority coloring](./algo/chow-coloring.md)
- [Bresenham's line algorithm](./algo/bresenham.md)
- [Cooley–Tukey FFT Algorithm](./algo/cooley-tukey.md)

---

## ARM

### General Purpose ARM Devices

- [Apple M1](./arm/M1.md)

### Embedded ARM Based Devices

- [Raspberry PI](./arm/raspberry-pi.md)
- [PI Boot Config](./arm/pi-boot-config.md)


### ARM Thumb

- [ARM Thumb](./assembler/arm/thumb.md)

---

## Astronomy

- [Jansky(Jy)](./astro/jansky.md)
- [uv plane](./astro/uv.md)
- [TaQL](./astro/taql.md)
- [ephemerides](./astro/ephemerides.md)
- [Astronomical unit](./astro/au.md)
- [Fanaroff Riley Classification](./astro/FR.md)

---

## Assembler

### CPU Instruction Sets

- [x86](./assembler/x86.md)
- [ARM](./arm/arm.md)

### Other ISAs

- [PTX](./assembler/ptx/ptx.md)

---

## Books

---

## Build Tools

### Makefile

- [Makefile](./buildtools/makefile/makefile.md)
- [Makefile Auto Variables](./buildtools/makefile/makefile-autovariables.md)
- [Make foreach](./buildtools/makefile/make-foreach.md)
- [Make parallel builds](./buildtools/makefile/make-parallel.md)
- [Make reading shell output](./buildtools/makefile/make-shell.md)
- [Make string functions](./buildtools/makefile/make-string-functions.md)
- [Echoing commands](./buildtools/makefile/makefile-echo.md)
- [Include other makefile](./buildtools/makefile/make-include.md)

### CMake

- [CMake Fetch](./buildtools/cmake/cmake-fetch.md)
- [CMake Dependency](./buildtools/cmake/cmake-dependency.md)
- [CMake Release Type](./buildtools/cmake/cmake-release-type.md)
- [CMake Flags per Release](./buildtools/cmake/cmake-flags-per-release.md)
- [CMake Specify Compiler](./buildtools/cmake/cmake-specify-compiler.md)

---

## Code Art

- [Code Art Secrets](./code-art/code-art-secrets.md)
- [Avatar Generator](./code-art/avatar-generator.md)
- [Glider](./code-art/glider.md)

---

## Computer Architecture

- [CPU Features](./computer-architecture/cpu-features.md)
- [Branch Prediction](./computer-architecture/branch-prediction.md)
- [Resident Set Size](./computer-architecture/resident-memory.md)
- [Cache Coherence](./computer-architecture/cache-coherence.md)
- [Sandy Bridge Pipeline](./computer-architecture/sandy-bridge-pipeline.md)

---

## Computer Science Research

- [Sorting Networks](./cs-research/sorting-networks.md)
- [Vectorizing Complex Multiplication](./cs-research/vectorisation.md)
- [Z3 Theorm Prover](./cs-research/z3.md)

---

## Containers

- [Using perf within containers](./containers/perf-within-container.md)
- [Docker prevent permission issue with files created inside container](./containers/permission-issue-in-container.md)

---

## Crypto

- [Constant time cryptography](./crypto/constant-time.md)
- [Hashcash](./crypto/hashcash.md)

---

## Data

- [k means](./data/k-means.md)
- [Quantization](./data/quantization.md)
- [CNN](./data/cnn.md)
- [RNN](./data/rnn.md)
- [Fine tuning](./data/fine-tuning.md)

---

## Data Structure

- [Disjoint Set](./ds/disjoint-set.md)
- [Segment Tree](./ds/segment-tree.md)

---

## Design

- [Covariance and Contravariance](./design/covariance-and-contravariance.md)
- [Law of Demeter.md](./design/law-of-demeter.md)

---

## Digital Design

### Bus

- [AXI](./digital-design/bus/axi.md)
- [Wishbone](./digital-design/bus/wishbone.md)
- [Getting started](./digital-design/fpga.md)
- [Verilog](./digital-design/verilog.md)
- [HLS](./digital-design/hsl.md)
- [AXI Stream](./digital-design/axi-stream.md)
- [LUT](./digital-design/lut.md)
- [PCI-Express](./digital-design/pcie.md)
- [DDR](./digital-design/dram.md)
- [JTAG](./digital-design/jtag.md)
- [Litex](./digital-design/litex.md)
- [OpenOCD](./digital-design/openocd.md)
- [Memory Controller](./digital-design/memory-controller.md)
- [NoC](./digital-design/noc.md)
- [GTKWave](./digital-design/gtkwave.md)
- [Open Hardware](./digital-design/open-hardware.md)
- [OpenOCD Chipyard](./digital-design/openocd-chipyard.md)
- [Decoupling](./digital-design/decoupling.md)
- [Differential Signalling](./digital-design/differential-signalling.md)
- [KiCad](./digital-design/kicad.md)
- [Power On Reset](./digital-design/power-on-reset.md)
- [Sync and Async Reset](./digital-design/sync-async-reset.md)
- [DDR](./digital-design/ddr.md)
- [Bambu HLS](./digital-design/bambu-hls.md)
- [8b10b encoding](./digital-design/8b10_encoding.md)
- [Formal Verification](./digital-design/formal-verification.md)
- [DFI Controller](./digital-design/dfi-controller.md)
- [MIG 7 series](./digital-design/mig-7series.md)

---

## DSP
- [Random Signals](./dsp/random-signal.md)
- [Filters](./dsp/filters.md)

---

## Frontend

### React

- [React Froward Ref](./frontend/react/forward-ref.md)

#### Core Web

- [Request Animation Frame](./frontend/browser/raf.md)

### Core CSS

- [Flex Box](./frontend/browser/flex.md)
- [Bounding Client Rectangle](./frontend/css/bounding-client-rect.md)
- [Before After Pseudo Elements](./frontend/css/before-after-pseudo-elements.md)
- [Linear Gradient](./frontend/css/linear-gradient.md)
- [Multiclass Selectors](./frontend/css/multiclass-selectors.md)
- [CSS Matrix Transforms](./frontend/css/css-matrix-transform.md)

### Frontend Tools

- [Emmet Abbreviations](./frontend/tools/emmet.md)
### CSS Tricks
- [Pure CSS Triangles](./frontend/css/pure-css-triangles.md)

---

## Filesystem {#fs}
- [FAT Filesystem](./fs/fat.md)

---

## Git

- [Co authoring Commits](./git/co-authoring-commits.md)
- [Update branch with upstream](./git/update-branch.md)
- [Check out a PR](./git/checkout-pr.md)
- [Create patch from commits](./git/create-patch-from-commit.md)
- [Delete git submodule](./git/delete-submodule.md)
- [Git bisect](./git/git-bisect.md)
- [Git tag types](./git/git-tag.md)
- [Git submodule Update](./git/submodule-update.md)
- [Git force update detection](./git/git-force-push-detection.md)

---

## GNU

- [dejagnu](./gnu/dejagnu.md)
- [gperf](./gnu/gperf.md)
- [recutils](./gnu/recutils.md)
- [texinfo](./gnu/texinfo.md)

---

## GNUPlot

- [gnuplot color theme](./gnuplot/color-theme.md)
- [gnuplot output terminals](./gnuplot/terminal.md)
- [gnuplot fitting](./gnuplot/fit.md)

---

## Graphics

- [Three JS](./graphics/three-js.md)
- [Creating a trapezoid](./graphics/creating-a-trapezoid.md)
- [OBJ format](./graphics/obj_format.md)
- [Wavefunction Collapse](./graphics/wavefunction-collapse.md)
- [Signed Distance Function](./graphics/signed-distace-function.md)

---

## IRC

- [IRC Cheatsheet](./irc/irc-cheat-sheet.md)
- [IRC Relay](./irc/relay.md)

---

## Ideas

- [sqlite t-digest](./ideas/sqlite-tdigest.md)
- [busybox httpd](./ideas/busybox-httpd.md)

---

## Kernel

- [namespaces](./kernel/namespaces.md)
- [sched_yield](./kernel/sched_yield.md)
- [menuconfig](./kernel/menuconfig.md)
- [vfs](./kernel/vfs.md)

---

## Languages

### Bash

- [Bash Check if env variable present](./languages/bash/bash-check-env-variable.md)
- [Bash getopts](./languages/bash/bash-getopts.md)
- [Bash params](./languages/bash/bash-params.md)
- [Bash pass env variable to subcommand](./languages/bash/bash-pass-argument-to-sub-command.md)
- [Bash read config file and store value from config file](./languages/bash/bash-read-store-config.md)
- [Bash get script directory](./languages/bash/bash-script-dir.md)
- [Bash subcommand](./languages/bash/bash-subcommand.md)
- [Bash convert to upper case](./languages/bash/bash-uppercase.md)
- [Bash check platform](./languages/bash/bash-check-platform.md)
- [Bash declare](./languages/bash/bash-declare.md)
- [Bash array](./languages/bash/bash-array.md)
- [Bash for loop](./languages/bash/bash-forloop.md)
- [Bash auto completions](languages/bash/bash_completions.md)

### C

- [Function as Argument with function pointer](./languages/c/function-pointer-usage.md)
- [Optargs for cli arg parsing](./languages/c/opt-arg.md)
- [Setting OpenSSL in Makefile](./languages/c/openssl-makefile.md)
- [Default Argument](./languages/c/default-arg.md)
- [Static Method](./languages/c/static-function.md)
- [CWeb](./languages/c/cweb.md)

### CPP

- [Initializer List](./languages/cplusplus/initializer-list.md)
- [Copy Constructor](./languages/cplusplus/copy-ctor.md)
- [Move Contructor](./languages/cplusplus/move-ctor.md)
- [Trailing Return Type](./languages/cplusplus/trailing-return-type.md)
- [auto and decltype](./languages/cplusplus/auto-decltype.md)
- [Remove Reference](./languages/cplusplus/remove-reference.md)
- [const member function](./languages/cplusplus/const-member-function.md)
- [vectors](./languages/cplusplus/vectors.md)
- [Run-Time Type Information](./languages/cplusplus/rtti.md)
- [Rule of Five and One](./languages/cplusplus/rule-5-0.md)
- [C++ Modules](./languages/cplusplus/modules.md)
- [C++ override ostream](./languages/cplusplus/overide-ostream-cout.md)
- [Likely Attribute](./languages/cplusplus/likely_attribute.md)
- [Inline](./languages/cplusplus/inline.md)

### Fortran

- [GPU Fortran](./languages/fortran/gpu-fortran.md)

### Go

- [Using C Libraries in Go](./languages/go/cgo/using-c-libraries-in-go.md)
- [Using Go Libraries in C](./languages/go/cgo/using-go-libraries-in-c.md)
- [Compiling Go for ARM](./languages/go/cross-compilation/go-arm-cross-compile.md)

### Perl

- [Read line by line](./languages/perl/read-line-by-line.md)
- [Perl run modes](./languages/perl/perlrun-modes.md)

### Python

- [Closing plots in matplotlib](./languages/matplotlib-closing-figure.md )
- [Downloading from Google Collab](./languages/download-from-google-collab.md)
- [Fault handler](./languages/py/fault-handler.md)

### Tex

- [MathJax](./languages/tex/mathjax.md)

### Typescript

- [Typescript Conditional Typing](./languages/typescript/conditional-typing.md)

### Java

- [JAR Packing Java](./languages/java/jar-packing.md)

### JS

- [Yarn Berry](./languages/js/yarn-berry.md)
- [Convert from hex to UTF-8 in Node](./languages/js/convert-from-hex-to-utf8.md)
- [Incresing libuv Thread pool](./languages/js/libuv_thread_increase.md)


### Guile

- [Guile Assoc List](./languages/guile/guile_assoc_list.md)
- [Guile CLI Application](./languages/guile/guile_cli_app.md)
- [Guile Macros](./languages/guile/guile_macros.md)


### OCaml

- [OCaml Learning Resources](./languages/ocaml/learning-resources.md)

### HPC

- [Domain Decomposition](./languages/hpc/domain-decomposition.md)
- [GPU Acceleration](./languages/hpc/gpu-acceleration.md)
- [OpenMP](./languages/hpc/openmp.md)
- [ASIC](./languages/hpc/asic.md)
- [FPGA](./languages/hpc/fpga-as-accelerator.md)
- [Cuda](./languages/hpc/cuda.md)
- [Optimizing x86 code](./languages/hpc/optimizing-x86.md)
- [LLVM MCA](./languages/hpc/machine-code-analysis.md)
- [MPI Bindings](./languages/hpc/mpi-bindings.md)
- [CUDA Direct](./languages/hpc/cuda-direct.md)
- [Thrust](./languages/hpc/thrust.md)

### Generic

- [Data structure alignment](./languages/generic/data-structure-alignment.md)
- [Backpressure in Streams](./languages/generic/backpressure.md)
- [BLAS](./languages/generic/blas.md)
- [ABI](./languages/generic/abi.md)
- [Alias Analysis](./languages/generic/alias-analysis.md)
- [Bitwise Tricks](./languages/generic/bitwise-tricks.md)

### C/CPP Compilers

- [What is dSYM](./languages/c-compiler/what-is-dsym.md)
- [Ignore unused var in C/C++](./languages/c-compiler/unused-variables.md)
- [Creating a Shared Library](./languages/c-compiler/shared-library.md)
- [Include Guards in C](./languages/c-compiler/include-guard.md)
- [Setup for LLDB](./languages/c-compiler/setup-lldb.md)
- [Pragma once](./languages/c-compiler/pragma-once.md)
- [restrict](./languages/c-compiler/restrict.md)
- [File as Flag](./languages/c-compiler/file-as-flags.md)
- [Frame Pointer](./languages/c-compiler/frame-pointer.md)
- [Compilation Flags](./languages/c-compiler/flags.md)
- [Auto Vectorization](./languages/c-compiler/auto-vectorization.md)
- [Compact Unwinding](./languages/c-compiler/compact-unwinding.md)
- [DWARF](./languages/c-compiler/dwarf.md)
- [Stack Unwinding](./languages/c-compiler/stack-unwinding.md)
- [Common Subexpression Elimination](./languages/c-compiler/common-subexpression-elimination.md)
- [IRA algorithm](./languages/c-compiler/ira-algorithm.md)
- [Loop Distribution](./languages/c-compiler/loop-distribution.md)
- [Profile Guided Optimization](./languages/c-compiler/profile-guided-optimization.md)
- [Output ASM](./languages/c-compiler/output-asm.md)
- [Pragmas in define](./languages/c-compiler/pragmas-in-define.md)
- [Struct Packing](./languages/c-compiler/struct-packing.md)
- [Inline ASM](./languages/c-compiler/inline-asm.md)
- [Offloading PTX](./languages/c-compiler/offloading-ptx.md)
- [AVX](./languages/c-compiler/avx.md)
- [POD](./languages/c-compiler/pod.md)
- [C Compiler fast math](./languages/c-compiler/fast-math.md)
- [C Compiler FORTIFY\_SOURCE](./languages/c-compiler/fortify-source.md)
- [Cost of integer division](./languages/c-compiler/integer-division.md)
- [FFTW libraries](./languages/c-compiler/fftw-libraries.md)
- [Offloading](./languages/c-compiler/offloading.md)
- [CPP Dialect](./languages/c-compiler/cpp-dialect.md)

#### GCC Specific

- [GCC specific auto vectorization features](./languages/c-compiler/gcc/auto-vectorization-gcc.md)
- [Tree SSA](./languages/c-compiler/gcc/tree-ssa.md)
- [Function Multiversioning](./languages/c-compiler/gcc/function-multiversioning.md)

#### Clang Specific

**LLVM**

- [LLVM passes](./languages/c-compiler/llvm/llvm-passes.md)
- [LLVM tools](./languages/c-compiler/llvm/llvm-tools.md)
- [LLVM IR](./languages/c-compiler/llvm/llvm-ir.md)

**Clang**

- [Clang specific auto vectorization features](./languages/c-compiler/llvm/clang/auto-vectorization-clang.md)
- [Clang specific flags](./languages/c-compiler/llvm/clang/clang-specific-flags.md)
- [clangd compile options](./languages/c-compiler/llvm/clang/clangd-compile-options.md)
- [Range constraint of Multiplication and Division](./languages/c-compiler/llvm/clang/muldiv-range-constraint.md)
- [Clang time trace](./languages/c-compiler/llvm/clang/time-trace.md)

### MLIR

- [Dialects](./languages/mlir/dialects.md)
- [Filecheck](./languages/mlir/filecheck.md)
- [Tablegen](./languages/mlir/tablegen.md)

---

## LLM
- [Embedding](./llm/embedding.md)
- [Vector Stores](./llm/vector_store.md)
- [LLM](./llm/llm.md)
- [LLM Glue Benchmark](./llm/glue_benchmark.md)
- [LLM for TDD](llm/llm-for-tdd.md)

---

## Network
- [Gopher Protocol](./network/gopher.md)
- [Data URL](./network/data-url.md)
- [Preflight Request](./network/http-preflight.md)
- [WSDL](./network/wsdl.md)
- [CGI Interface](./network/cgi.md)

---

## Notebooks
- [CASA Imaging](https://github.com/Mark1626/knowledge/blob/master/notebooks/CASA%20Imaging.ipynb)
- [Visualising FFT](https://github.com/Mark1626/knowledge/blob/master/notebooks/Effects%20of%20Fourier%20Transform.ipynb)
- [Normal Equations](https://github.com/Mark1626/knowledge/blob/master/notebooks/Normal%20Equations.ipynb)
- [Searching the Sky](https://github.com/Mark1626/knowledge/blob/master/notebooks/Searching%20the%20Sky.ipynb)
- [Sky Coordinates](https://github.com/Mark1626/knowledge/blob/master/notebooks/Sky%20Coordinates.ipynb)
- [Measurement Set](https://github.com/Mark1626/knowledge/blob/master/notebooks/Measurement%20Set.ipynb)
- [2D Guassian Fitting](https://github.com/Mark1626/knowledge/blob/master/notebooks/Fitting%202D%20Gaussian.ipynb)
- [Understanding W-Sampling](https://github.com/Mark1626/knowledge/blob/master/notebooks/Understanding%20w%20sampling.ipynb)
- [Reading FITS Header cfitsio](https://github.com/Mark1626/knowledge/blob/master/notebooks/1.1.a%20Reading%20FITS%20Header%20cfitsio.ipynb)
- [Reading FITS Header astropy](https://github.com/Mark1626/knowledge/blob/master/notebooks/1.1.b%20Reading%20FITS%20Header%20-%20Astropy.ipynb)
- [WCS](https://github.com/Mark1626/knowledge/blob/master/notebooks/1.2.a%20WCS.ipynb)
- [Understanding Random Forest](https://github.com/Mark1626/knowledge/blob/master/notebooks/Understanding%20Random%20Forest%20Classification.ipynb)
- [Power Spectral Density](https://github.com/Mark1626/knowledge/blob/master/notebooks/Power%20Spectral%20Density.ipynb)
- [R2C FFT, C2C FFT, IFFT through FFT](https://github.com/Mark1626/knowledge/blob/master/notebooks/R2C%20FFT%2C%20C2C%20FFT%2C%20IFFT%20through%20FFT.ipynb)
- [Analysing Linear Polarisation](https://github.com/Mark1626/knowledge/blob/master/notebooks/Analyzing%20Linear%20Polarisation.ipynb)
- [Exploring MSv4](https://github.com/Mark1626/knowledge/blob/master/notebooks/Exploring%20MSv4.ipynb)

---

## Philosophy

- [Mu](./philosophy/mu.md)
- [Absurdism](./philosophy/absurdism.md)
- [Existentialism](./philosophy/existentialism.md)

---

## POSIX
- [regex](./posix/regex.md)

---

## Physics
- [Barycenter](./physics/barycenter.md)
- [Radial Velocity](./physics/radial-velocity.md)

---

## Psychology
- [Pygmalion Effect](./psychology/pygmalion-effect.md)

---

## Platforms

### DOS
- [Setting PATH in DOS](./platforms/dos/set-path.md)
- [Job File Table](./platforms/dos/job-file-table.md)
- [COM file defaults](./platforms/dos/com-file-defaults.md)
- [Check for input](./platforms/dos/reading-input.md)

---

## Quantum
- [cnot gate](./quantum/cnot-gate.md)
- [entanglement](./quantum/entanglement.md)
- [quantum-circuit](./quantum/quantum-circuit.md)
- [qubit](./quantum/qubit.md)
- [quantum teleportation](./quantum/teleportation.md)
- [toffoli gates](./quantum/toffoli-gate)

### Notebooks
- [Bell State](https://github.com/Mark1626/knowledge/blob/master/quantum/Bell%20State.ipynb)
- [Full Adder](https://github.com/Mark1626/knowledge/blob/master/quantum/Full%20Adder.ipynb)
- [GHZ State](https://github.com/Mark1626/knowledge/blob/master/quantum/GHZ%20State.ipynb)
- [W State](https://github.com/Mark1626/knowledge/blob/master/quantum/W%20State.ipynb)

---

## SIMD

- [Intrinsics reference](./simd/reference.md)
- [Intrinsics Learning Resources and Blogs](./simd/learning-resources-blogs.md)

### x86
- [AVX Cmp](./simd/x86/avx-cmp.md)
- [SSE2](./simd/x86/sse2.md)
- [AVX512](./simd/x86/avx512.md)

### Neon

---

## Sqlite

- [Execute Single Query In Sqlite Cli](./sqlite/sqlite-cli-command.md)
- [Change default separator](./sqlite/change-default-separator.md)
- [Output Queries to File](./sqlite/output-queries-to-file.md)
- [sqlite import csv](.sqlite/sqlite-import-csv.md)
- [Run script on sqlite DB](.sqlite/sqlite-script.md)

---

## Tools

### apr

- [apr](./tools/apr.md)

### ab

- [Apache Benchmark](./tools/ab.md)

### apropos

- [apropos](./tools/apropos.md)

### Clang Format {#clang-format}

- [Clang Format](./tools/clang-format.md)

### convert

- [Resize Image with Convert](./tools/convert.md)
- [Tint Image with Convert](./tools/convert-tint-image.md)

### cURL

- [cURL POST](./tools/curl-post-basics.md)
- [cURL Format](./tools/curl-post-format.md)
## dc

- [DC Calculator](./tools/dc.md)

### dd

- [dd](./tools/dd.md)

### Dracula

- [Dracula](./tools/dracula.md)

### ffmpeg

- [Convert Video format with ffmpeg](./tools/ffmpeg.md)

### gpg

- [gpg](./tools/gpg.md)

### hexdump

- [Hexdump](./tools/hexdump.md)

## i3

- [i3wm](./tools/i3.md)

## imagemagik

- [mogrify compress image](./tools/compress-image.md)

## jot

- [jot](./tools/jot.md)

## locate

- [locate](./tools/locate.md)

### Lynx

- [Lynx Print HTML](./tools/lynx-print-html-page.md)

### m4

- [m4](./tools/m4.md)

### nm

- [nm](./tools/nm.md)

### nmap

- [Scanning local network IPs with NMap](./tools/nmap.md)

### otool

- [otool](./tools/otool.md)

### pactl

- [pactl](./tools/pactl.md)

### perf

- [perf](./tools/perf.md)

### pkg-config

- [pkg-config](./tools/pkg-config.md)

### ppm

- [ppm](./tools/ppm.md)

### rlwrap

- [rlwrap](./tools/rlwrap.md)

### rs

- [rs](./tools/rs.md)

### seq

- [seq](./tools/seq.md)

### snap

- [snap](./tools/snap.md)

### tar

- [tar](./tools/tar.md)

### tmux

- [tmux copy pane content](./tools/tmux-copy-pane-content.md)
- [tmux rename window](./tools/tmux-rename.md)

### wget

- [wget](./tools/wget.md)

---

## Unicode

- [Block elements](./unicode/block-elements.md)
- [Box drawing](./unicode/box-drawing.md)
- [Dingbat](./unicode/dingbat.md)
- [Geometric Shapes](./unicode/geometric-shapes.md)
- [Mathematical Operations](./unicode/mathematical-operators.md)

---

## Unix

- [ar](./unix/ar.md)
- [Cron](./unix/cron.md)
- [Difference between glibc and libc6](./unix/diff-libgc-and-libc6.md)
- [Difference between guneabi vs gnueabihf](./unix/gnueabi-vs-gnueabihf.md)
- [SSH Identity](./unix/ssh-identity.md)
- [Systemd](./unix/systemd.md)
- [xargs](./unix/xargs.md)
- [Generate Locale](./unix/locale.md)
- [Changing Ownership](./unix/chown.md)
- [Setting path of dynamic libraries](./unix/dylib_path.md)
- [Change Shell](./unix/change-shell.md)
- [Understanding Wifi](./unix/understanding-wifi.md)
- [Ansi Colors](./unix/ansi-colors.md)
- [Users and Groups](./unix/user-group.md)
- [Shebang](./unix/shebang.md)
- [IO Uring](./unix/io-uring.md)
- [SSH key creation and sharing](./unix/ssh_keygen.md)
- [Static IP in local network](unix/static-ip-dhcp.md)
- [Mach O](./unix/mach-o.md)
- [tid and pid](./unix/tid-pid.md)
- [Cpu Info](./unix/cpu-info.md)
- [SSH Disable password login](./unix/ssh-disable-password-login.md)
- [shm](./unix/shm.md)
- [sshfs](./unix/sshfs.md)
- [Energy Consumption](./unix/energy-consumption.md)
- [Protection rings](./unix/protection-ring.md)
- [List devices](./unix/list-devices.md)
- [Reading Serial Port](./unix/reading-serial.md)
- [Ghost Script](./unix/gs.md)
- [TFPT](./unix/tftp.md)
- [Kernel Modules](./unix/kernel-modules.md)
- [Codesign](./unix/codesign.md)

---

## Vim

- [How to exit vim](./vim/how-to-close.md)
- [Vim packages](./vim/vim-packages.md)
- [Find and Replace](./vim/find-and-replace.md)
- [Visual Mode](./vim/visual-mode.md)
- [Copy To Clipboard in MacOS](./vim/copy-clipboard.md)
- [Paste From Clipboard in MacOS](./vim/paste-clipboard.md)
- [Vim marks](./vim/vim-marks.md)
- [Replace and Change](./vim/replace-change.md)

---

## Web

- [Standard SubResource Integrity - SSRI](./web/ssri.md)

---

# Credits

Inspired by
+ [yoshuawuyts](https://github.com/yoshuawuyts/knowledge)
+ [jbranchaud](https://github.com/jbranchaud/til)

You can find other similar repos in [RichardLitt](https://github.com/RichardLitt)'s [meta-knowledge](https://github.com/RichardLitt/meta-knowledge) list
