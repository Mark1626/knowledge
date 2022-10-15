# FFT Libraries

FFTW3 is a common and popular choice. It's flexible and easily be modified to have plugins for newer hardware. Threads are supported in FFTW throught OpenMP.

## Alternative choices

### Intel MKL and AMD AOCL FFTW

These are libraries optimized for specific CPUs. They are a drop in replacement for FFTW3 through `LD_LIBRARY_PATH`, depending on the hardware they can provide significant performance improvement

### cuFFT and hipFFT

These are GPU FFT libraries, their APIs are different and the developer has to take into account data transfer to and from the GPU as well as allocating GPU buffers.

These libraries are purely used for accelerated FFT usecases. In both cuFFT and hipFFT there is a high level wrapper cuFFTW which has support for limited FFTW APIs, however under the hood it's accelerated code that will require GPU buffer and data transfer management

