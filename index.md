💡 document everything

## About

A collection of tidbits on things I learn

---

## Contents

There are #356 articles

---

## Categories

+ [ARM](#arm)
+ [Algorithm](#algo)
+ [Astronomy](#astro)
+ [Books](#books)
+ [Build Tools](#build-tools)
+ [Crypto](#crypto)
+ [Code Art](#codeart)
+ [Computer Architecture](#cparch)
+ [Containers](#containers)
+ [Data](#data)
+ [Data Structure](#datastructures)
+ [Frontend](#frontend)
+ [Git](#git)
+ [GNU](#gnu)
+ [Graphics](#graphics)
+ [HPC](#hpc)
+ [Ideas](#ideas)
+ [IRC](#irc)
+ [Kernel](#kernel)
+ [Languages](#languages)
+ [Math](#math)
+ [Network](#network)
+ [Notebooks](#notebooks)
+ [Origami](#origami)
+ [Papers](#papers)
+ [Philosophy](#philosophy)
+ [Posix](#posix)
+ [Postgresql](#postgresql)
+ [Platforms](#platforms)
+ [Psychology](#psychology)
+ [Quantum](#quantum)
+ [RFC](#rfc)
+ [SIMD](#simd)
+ [Sqlite](#sqlite)
+ [Tools](#tools)
+ [Unix](#unix)
+ [Vim](#vim)
+ [Web](#web)

---

### ARM

- [Raspberry PI boot config](./arm/pi-boot-config.md)

---

### Algorithm {#algo}

- [Boyer–Moore algorithm](./algo/bm.md)
- [Boyer–Moore–Horspool algorithm](./algo/bmh.md)
- [XOR Shift Rotate](./algo/xor-shift.md)
- [Kadane](./algo/kadane.md)
- [Chaitin-Briggs coloring](./algo/chaitin-briggs-coloring.md)
- [Chow’s priority coloring](./algo/chow-coloring.md)
- [Bresenham's line algorithm](./algo/bresenham.md)
- [Cooley–Tukey FFT Algorithm](./algo/cooley-tukey.md)

---

### Astronomy {#astro}

- [Jansky(Jy)](./astro/jansky.md)
- [uv plane](./astro/uv.md)
- [TaQL](./astro/taql.md)
- [ephemerides](./astro/ephemerides.md)
- [Astronomical unit](./astro/au.md)

---

### ASM

- [Segments](./assembler/asm/segments.md)
- [Data Registers](./assembler/asm/data-registers.md)
- [Pointer Registers](./assembler/asm/pointer-registers.md)
- [Index Registers](./assembler/asm/index-registers.md)
- [Flags / Control Registers](./assembler/asm/control-registers.md)
- [gdb debugging](./assembler/asm/gdb.md)

#### PTX

- [PTX](./assembler/ptx/ptx.md)

#### NASM

- [NASM](./assembler/nasm.md)

#### GAS

- [GNU Assembler](./assembler/gas/gnu-asm.md)
- [asciz vs string](./assembler/gas/asciz-vs-string.md)

### Crypto

- [Constant time cryptography](./crypto/constant-time.md)
- [Hashcash](./crypto/hashcash.md)

---

### CodeArt

- [Code Art Secrets](./code-art/code-art-secrets.md)
- [Avatar Generator](./code-art/avatar-generator.md)
- [Glider](./code-art/glider.md)

---

### Computer Architecture {#cparch}

- [CPU Features](./computer-architecture/cpu-features.md)
- [Branch Prediction](./computer-architecture/branch-prediction.md)
- [Resident Set Size](./computer-architecture/resident-memory.md)
- [Cache Coherence](./computer-architecture/cache-coherence.md)
- [Sandy Bridge Pipeline](./computer-architecture/sandy-bridge-pipeline.md)

---

### Containers

- [Using perf within containers](./containers/perf-within-container.md)
- [Docker prevent permission issue with files created inside container](./containers/permission-issue-in-container.md)

---

### Data

- [k means](./data/k-means.md)

---

### DataStructures

- [Disjoint Set](./ds/disjoint-set.md)
- [Segment Tree](./ds/segment-tree.md)

---

### Design

- [Covariance and Contravariance](./design/covariance-and-contravariance.md)
- [Law of Demeter.md](./design/law-of-demeter.md)

---

### DSP

- [Random Signals](./dsp/random-signal.md)

---

### FPGA

- [Getting started](./fpga/fpga.md)
- [Verilog](./fpga/verilog.md)

---

### Frontend

#### React

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

#### Frontend Tools

- [Emmet Abbreviations](./frontend/tools/emmet.md)

#### CSS Tricks

- [Pure CSS Triangles](./frontend/css/pure-css-triangles.md)

---

### Git

- [Co authoring Commits](./git/co-authoring-commits.md)
- [Update branch with upstream](./git/update-branch.md)
- [Check out a PR](./git/checkout-pr.md)
- [Create patch from commits](./git/create-patch-from-commit.md)
- [Delete git submodule](./git/delete-submodule.md)
- [Git bisect](./git/git-bisect.md)
- [Git tag types](./git/git-tag.md)

---

### GNU

- [dejagnu](./gnu/dejagnu.md)
- [gperf](./gnu/gperf.md)
- [recutils](./gnu/recutils.md)
- [texinfo](./gnu/texinfo.md)

---

### Graphics

- [Three JS](./graphics/three-js.md)
- [Creating a trapezoid](./graphics/creating-a-trapezoid.md)

---

### IRC

- [IRC Cheatsheet](./irc/irc-cheat-sheet.md)
- [IRC Relay](./irc/relay.md)

---

### Ideas

- [sqlite t-digest](./ideas/sqlite-tdigest.md)
- [busybox httpd](./ideas/busybox-httpd.md)

---

### Kernel

- [namespaces](./kernel/namespaces.md)
- [sched_yield](./kernel/sched_yield.md)
- [menuconfig](./kernel/menuconfig.md)
- [vfs](./kernel/vfs.md)

---

### Languages

#### Bash

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

#### Common

- [Data structure alignment](./languages/generic/data-structure-alignment.md)
- [Backpressure in Streams](./languages/generic/backpressure.md)
- [BLAS](./languages/generic/blas.md)
- [ABI](./languages/generic/abi.md)
- [Alias Analysis](./languages/generic/alias-analysis.md)
- [Bitwise Tricks](./languages/generic/bitwise-tricks.md)

#### C/CPP Compilers {#c-cpp-compilers}

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

##### Clang

- [Clang specific auto vectorization features](./languages/c-compiler/clang/auto-vectorization.md)
- [Clang specific flags](./languages/c-compiler/clang/clang-specific-flags.md)
- [clangd compile options](./languages/c-compiler/clang/clangd-compile-options.md)
- [Range constraint of Multiplication and Division](./languages/c-compiler/clang/muldiv-range-constraint.md)
- [Clang time trace](./languages/c-compiler/clang/time-trace.md)

##### LLVM

- [LLVM passes](./languages/llvm/llvm-passes.md)
- [LLVM tools](./languages/llvm/llvm-tools.md)

##### GCC

- [GCC specific auto vectorization features](./languages/c-compiler/gcc/auto-vectorization.md)
- [Tree SSA](./languages/c-compiler/gcc/tree-ssa.md)
- [Function Multiversioning](./languages/c-compiler/gcc/function-multiversioning.md)

#### C

- [Function as Argument with function pointer](./languages/c/function-pointer-usage.md)
- [Optargs for cli arg parsing](./languages/c/opt-arg.md)
- [Setting OpenSSL in Makefile](./languages/c/openssl-makefile.md)
- [Default Argument](./languages/c/default-arg.md)
- [Static Method](./languages/c/static-function.md)

#### CPP

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

#### Go

- [Using C Libraries in Go](./languages/go/cgo/using-c-libraries-in-go.md)
- [Using Go Libraries in C](./languages/go/cgo/using-go-libraries-in-c.md)
- [Compiling Go for ARM](./languages/go/cross-compilation/ARM.md)

#### HPC

- [Domain Decomposition](./languages/hpc/domain-decomposition.md)
- [GPU Acceleration](./languages/hpc/gpu-acceleration.md)
- [OpenMP](./languages/hpc/openmp.md)
- [ASIC](./languages/hpc/asic.md)
- [FPGA](./languages/hpc/fpga.md)
- [Cuda](./languages/hpc/cuda.md)

#### Ideas

- [t-digest sqlite](./ideas/sqlite-tdigest.md)

#### Perl

- [Read line by line](./languages/perl/read-line-by-line.md)
- [Perl run modes](./languages/perl/perlrun-modes.md)

#### Tex

- [MathJax](./languages/tex/mathjax.md)

#### TS

- [Typescript Conditional Typing](./languages/typescript/conditional-typing.md)

#### Rust

- [Compiling Rust for ARM](./languages/rust/cross-compilation/ARM.md)
- [Rust Unsafe](./languages/rust/unsafe.md)

#### Java

- [JAR Packing Java](./languages/java/jar-packing.md)

#### JS

- [Yarn Berry](./languages/js/yarn-berry.md)
- [Convert from hex to UTF-8 in Node](./languages/js/convert-from-hex-to-utf8.md)
- [Incresing libuv Thread pool](./languages/js/libuv_thread_increase.md)

---

### Build tools {#build-tools}

#### Makefile {#makefile}

- [Makefile](./buildtools/makefile/makefile.md)
- [Makefile Auto Variables](./buildtools/makefile/makefile-autovariables.md)
- [Make foreach](./buildtools//makefile/make-foreach.md)
- [Make parallel builds](./buildtools/makefile/make-parallel.md)
- [Make reading shell output](./buildtools/makefile/make-shell.md)
- [Make string functions](./buildtools/makefile/make-string-functions.md)
- [Echoing commands](./buildtools/makefile/makefile-echo.md)
- [Include other makefile](./buildtools/makefile/make-include.md)

#### CMake {#cmake}

- [CMake Fetch](./buildtools/cmake/cmake-fetch.md)
- [CMake Dependency](./buildtools/cmake/cmake-dependency.md)
- [CMake Release Type](./buildtools/cmake/cmake-release-type.md)
- [CMake Flags per Release](./buildtools/cmake/cmake-flags-per-release.md)
- [CMake Specify Compiler](./buildtools/cmake/cmake-specify-compiler.md)

---

### Math Research

- [Heighway Dragon](./math-research/heighway-dragon.md)
- [Fibonnaci Matrix Difference Equation](./math-research/fibonnaci-matrix-difference-equations.md)

---

### Network

- [Gopher Protocol](./network/gopher.md)
- [Data URL](./network/data-url.md)
- [Preflight Request](./network/http-preflight.md)
- [WSDL](./network/wsdl.md)
- [CGI Interface](./network/cgi.md)

---

### Notebooks

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

---

### Origami

#### Origami Units

##### Units

- [Litte Unit](./origami/units/little-unit.md)
- [Nick Robinson's Trimodule](./origami/units/nick-trimodule.md)
- [Oxi Unit](./origami/units/oxi.md)
- [Sonobe Unit](./origami/units/sonobe.md)
- [TSU Unit](./origami/units/tsu.md)

##### Cubes

- [Gyroscope](./origami/cubes/gyroscope.md)

##### Intersectional planes

- [XYZ](./origami/intersectional/planes/xyz.md)

##### Fractals

- [Menger Sponge](./origami/fractals/menger-sponge.md)

##### Icosahedron

- [Gallery](./origami/icosahedron/index.md)
- [Sonobe Icosahedron](./origami/icosahedron/sonobe.md)
- [Trimodule Icosahedron](./origami/icosahedron/trimodule.md)

##### Tesslations

- [Clover Tesslation](./origami/tesslation/clover.md)
- [Square Interlace Tesslation](./origami/tesslation/square_interlace.md)

##### Spiral

- [Navel Shell](./origami/spiral/navel.md)

##### Curlicue

- [Curlicue](./origami/curlicue/curlicue.md)

---

### Papers

- [The Design and Implementation of FFTW3](./papers/the-design-and-implementation-of-fftw3.md)
- [Source Finding](./papers/astronomy-source-finding.md)
- [H1 21cm Absorption](./papers/astronomy-h1-21cm-absorption.md)
- [MG-J0414+0534](./papers/MG_J0414_0534.md)

---

### Math

#### Automata

- [Abelian Sandpile](./math/automata/abelian-sandpile.md)
- [Game of Life](./math/automata/game-of-life.md)

#### Engineering Math {#eng}

#### Fractals

- [Chaos Game](./math/fractals/chaos_game.md)
- [Iterated Function Systems](./math/fractals/ifs.md)

#### Geometry

- [Rhombile Tiling](./math/geometry/rhombile_tiling.md)
- [Stellation](./math/geometry/stellation.md)
- [Affine Transform](./math/geometry/affine.md)
- [3D Rotation](./math/geometry/3d-rotation.md)

#### Linear Algebra

- [Normal Equations](./math/linear-algebra/normal-equations.md)

#### Number Theory

- [Ortho Latin Square](./math/number_theory/ortho-latin-square.md)
- [Perlin Noise](./math/number_theory/perlin-noise.md)
- [Kummer's Theorm](./math/number_theory/kummer.md)
- [Wilson's Theorm](./math/number_theory/wilson.md)
- [Pisano period](./math/number_theory/pisano-period.md)
- [Zeckendorf's Theorm](./math/number_theory/zeckendorf-theorm.md)
- [De Bruijn sequence](./math/number_theory/de-bruijn-sequence.md)
- [Chinese remainder theorem](./math/number_theory/chinese-reminder-theorm.md)
- [Euler's theorm](./math/number_theory/euler-theorm.md)
- [Euler's totient function](./math/number_theory/euler-totient-function.md)
- [Farey Sequence](./math/number_theory/farey-sequence.md)
- [Stern Brocot Tree](./math/number_theory/stern-brocot-tree.md)
- [Extended Euclidean Algorithm](./math/number_theory/extended-euclidean.md)
- [Euclidean Algorithm](./math/number_theory/euclidean-algorithm.md)
- [Prime Number Theorm](./math/number_theory/prime-number-theorm.md)
- [Mobius Function](./math/number_theory/mobius-function.md)
- [Chakravala Method](./math/number_theory/chakravala.md)
- [Fibonnaci Matrix](./math/number_theory/fibonnaci-matrix.md)

#### Statistics

- [Kuiper Test](./math/statistics/kuiper.md)

---

### Philosophy

- [Mu](./philosophy/mu.md)
- [Absurdism](./philosophy/absurdism.md)
- [Existentialism](./philosophy/existentialism.md)

---

### POSIX

- [regex](./posix/regex.md)

---

### Physics

- [Barycenter](./physics/barycenter.md)
- [Radial Velocity](./physics/radial-velocity.md)

---

### Psychology

- [Pygmalion Effect](./psychology/pygmalion-effect.md)

---

### Postgresql

- [References and Blogs](./postgres/index.md)
- [pg_ctl](./postgres/pgctl.md)
- [Template Databases](./postgres/template_databases.md)
- [Explain on sort](./postgres/explain-sort.md)
- [Explain on Join](./postgres/explain-join.md)
- [Extended Statistics](./postgres/extended-statistics.md)
- [Trust Authentication](./postgres/trust-authentication.md)
- [Count of Tuples and Pages](./postgres/postgres-page-tuples.md)

---

### Platforms

#### DOS

- [Setting PATH in DOS](./platforms/dos/set-path.md)
- [Job File Table](./platforms/dos/job-file-table.md)
- [COM file defaults](./platforms/dos/com-file-defaults.md)
- [Check for input](./platforms/dos/reading-input.md)

---

### Quantum

- [cnot gate](./quantum/cnot-gate.md)
- [entanglement](./quantum/entanglement.md)
- [quantum-circuit](./quantum/quantum-circuit.md)
- [qubit](./quantum/qubit.md)
- [quantum teleportation](./quantum/teleportation.md)
- [toffoli gates](./quantum/toffoli-gate)

#### Notebooks

- [Bell State](https://github.com/Mark1626/knowledge/blob/master/quantum/Bell%20State.ipynb)
- [Full Adder](https://github.com/Mark1626/knowledge/blob/master/quantum/Full%20Adder.ipynb)
- [GHZ State](https://github.com/Mark1626/knowledge/blob/master/quantum/GHZ%20State.ipynb)
- [W State](https://github.com/Mark1626/knowledge/blob/master/quantum/W%20State.ipynb)

---

### RFC

- [RFC 1122 Communication Layer](./rfc/rfc1122.md)
- [RFC 7578 multipart/form-data](./rfc/rfc7578.md)
- [RFC 2068 HTTP/1.1](./rfc/rfc2068.md)
- [RFC 2616 HTTP/1.1](./rfc/rfc2616.md)
- [RFC 7807 Problem Details in HTTP API](./rfc/rfc7807.md)

---

### SIMD

- [Intrinsics reference](./simd/reference.md)
- [Intrinsics Learning Resources and Blogs](./simd/learning-resources-blogs.md)

#### x86

- [AVX Cmp](./simd/x86/avx-cmp.md)
- [SSE2](./simd/x86/sse2.md)

#### Neon


---

### Sqlite

- [Execute Single Query In Sqlite Cli](./sqlite/sqlite-cli-command.md)
- [Change default separator](./sqlite/change-default-separator.md)
- [Output Queries to File](./sqlite/output-queries-to-file.md)

---

### Tools

#### apr

- [apr](./tools/apr.md)

#### ab

- [Apache Benchmark](./tools/ab.md)

### apropos

- [apropos](./tools/apropos.md)

#### Clang Format {#clang-format}

- [Clang Format](./tools/clang-format.md)

#### convert

- [Resize Image with Convert](./tools/convert.md)
- [Tint Image with Convert](./tools/convert-tint-image.md)

#### cURL

- [cURL POST](./tools/curl-post-basics.md)
- [cURL Format](./tools/curl-post-format.md)

### dc

- [DC Calculator](./tools/dc.md)

#### dd

- [dd](./tools/dd.md)

#### Dracula

- [Dracula](./tools/dracula.md)

#### ffmpeg

- [Convert Video format with ffmpeg](./tools/ffmpeg.md)

#### gpg

- [gpg](./tools/gpg.md)

#### hexdump

- [Hexdump](./tools/hexdump.md)

### i3

- [i3wm](./tools/i3.md)

### jot

- [jot](./tools/jot.md)

### locate

- [locate](./tools/locate.md)

#### Lynx

- [Lynx Print HTML](./tools/lynx-print-html-page.md)

#### m4

- [m4](./tools/m4.md)

#### nm

- [nm](./tools/nm.md)

#### nmap

- [Scanning local network IPs with NMap](./tools/nmap.md)

#### otool

- [otool](./tools/otool.md)

#### pactl

- [pactl](./tools/pactl.md)

#### perf

- [perf](./tools/perf.md)

#### pkg-config

- [pkg-config](./tools/pkg-config.md)

#### ppm

- [ppm](./tools/ppm.md)

#### rlwrap

- [rlwrap](./tools/rlwrap.md)

#### rs

- [rs](./tools/rs.md)

#### seq

- [seq](./tools/seq.md)

### snap

- [snap](./tools/snap.md)

#### tmux

- [tmux copy pane content](./tools/tmux-copy-pane-content.md)
- [tmux rename window](./tools/tmux-rename.md)

#### wget

- [wget](./tools/wget.md)

---

### Unicode

- [Block elements](./unicode/block-elements.md)
- [Box drawing](./unicode/box-drawing.md)
- [Dingbat](./unicode/dingbat.md)
- [Geometric Shapes](./unicode/geometric-shapes.md)
- [Mathematical Operations](./unicode/mathematical-operators.md)

---

### Unix

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

---

### Vim

- [How to exit vim](./vim/how-to-close.md)
- [Vim packages](./vim/vim-packages.md)
- [Find and Replace](./vim/find-and-replace.md)
- [Visual Mode](./vim/visual-mode.md)
- [Copy To Clipboard in MacOS](./vim/copy-clipboard.md)
- [Paste From Clipboard in MacOS](./vim/paste-clipboard.md)
- [Vim marks](./vim/vim-marks.md)
- [Replace and Change](./vim/replace-change.md)

---

### Web

- [Standard SubResource Integrity - SSRI](./web/ssri.md)

---

## Credits

Inspired by
+ [yoshuawuyts](https://github.com/yoshuawuyts/knowledge)
+ [jbranchaud](https://github.com/jbranchaud/til)

You can find other similar repos in [RichardLitt](https://github.com/RichardLitt)'s [meta-knowledge](https://github.com/RichardLitt/meta-knowledge) list
