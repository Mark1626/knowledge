# The Design and Implementation of FFTW3

[Back](../index.md#papers){: .button}

<script type="text/javascript" id="MathJax-script" async
  src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
</script>

## About

Paper on the implementation of FFTW3.

FFTW3 is a DFT algorithm that computes FFT in $O(NlogN)$

## DFT

DFT is given as $Y[k] = \sum_{j=0}^{n-1}X[j]e_n^{2 \pi i / n}$

The complexity of DFT is $O(N^2)$

## FFTW

### I/O tensors

DFT is expressed in I/O tensors, which is in turn expressed in terms of IO 
dimensions.

- I/O dimension d is a triple $d = (n, i, o)$, where n is non-negative integer length, i is the input stride and o is the output stride
- I/O tensor is a set of I/O dimensions $t = \{d_1, d_2, ... dn\}$

$dft(N, V, I, O)$ consists of 2 I/O tensors and two pointers I, O.

$dft(\{\}, \{\}, I, O)$  
$O(0) := I(0)$  

$dft(N, \{(n, i, o)\} \cup V, I, O)$ is a loop of n problems $0 \le k \lt n$ in $dft(N, V, I + k . i, O + k .o)$  

N is the size of the problem, V is the vector size.  
Or $|V|$ nested loops of $|N|-dimensional FFT$

$copy\_i(t)$ is a I/O tensor $\{(n, i, i) | (n, i, o) \in t\}$  
$copy\_o(t)$ is a I/O tensor $\{(n, o, o) | (n, i, o) \in t\}$  

The two pointers I and O specify memory locations of input and output.
if I = O then the problem is in place. A I/O tensor for which $i_{k}$ = $o_{k}$ for all 
k is said to be in-place

### DFT as I/O tensors

A $n_1 \times n_2$ matrix is stored as row major $n_2$ contiguous arrays for 
each row, stored in $n_1$ consecutive blocks, it can be represented 
as $X = \{(n_1, n_2, n_2), (n_2, 1, 1)\}$

2D DFT for this matrix is finding the rank-2, vector-rank-0 
$dft(X, \{\}, I, O)$ or $dft(\{(n_1, n_2, n_2), (n_2, 1, 1)\}, \{\}, I, O)$

$dft(\{\}, X, I, O)$ denotes copy from input to output, or $dft(\{\}, \{(n_1n_2, 1, 1)\}, I, O)$


### Plans in FFTW

Solve a DFT represented as I/O tensors
- Reduce a problem of arbitary vector rank to vector rank 0
- Reduce multi dimensional DFT to rank-1 problems(1D FFT problems).
- Solve rank 1, vector 0 problem by means of some algorithm

A plan involves finding the best permutation of these steps

#### no-op plans

No operations are done

#### rank-0 plans

- $|V| = 1, I \ne O $ input is copied to output
- $|V| = 2, I = O$ matrix transposition problem

#### rank-1 plans: 1D Fourier transforms

##### direct plans

When n is small enough direct plan is used

$dft(\{n,i,o\}, V, I, O) where |V| \le 1, n \in {2, 4, ... 64}$
FFTW has codelets to solve for these low n values.
User to add hand-written machine-specific codelets if desired

$|V|=0$ is straight line code. $|V|=1$ is loop wrapped straight line code

##### Cooley-Tukey Plans

For the type $dft(\{n,i,o\},V,I,O), n=rm$ radix-r Cooley-Tukey plan.

Planner generates several values of r and chooses the best one.

- Decimation in Time plan: radix $n_2$ plan
    1. Solve $dft(\{(m,r.i,o)\},V \cup \{(r,i,m.o)\},I,O)$
    2. Multiply output O by twiddle factors
    3. Solve $dft(\{(r,m.o,m.o)\},V \cup \{(m,o,o)\},O,O)$
    2 and 3 are fused together in a codelet

- Decimation in Frequency plan:
    1. Solve $dft(\{(r,m.i,m.i)\},V \cup \{(m,i,i)\},I,I)$
    2. Multiply input I by twiddle factors
    3. Solve $dft(\{(m,i,r.o)\},V \cup \{(r,m.i,o)\},I,O)$
    1 and 2 are fused together in a codelet

    DIF destroys input buffer

#### Higher ranks

Reduce to lower ranks and solve recursively

To solve $dft(N,V,I,O)$, where $N=N_1 \cup N_2, |N_1| \ge 1 |N_2| \ge 1$

Solve $dft(N_1, V \cup N_2, I, O)$, then solve 
$dft(copy\_o(N_2), copy\_o(V \cup N_1), O, O)$

#### Higher vector ranks

To solve $dft(N,V,I,O)$, where $V=\{(n,i,o)\} \cup V_1$

Loop over $0 \le k < n$ and solve $dft(N,V_1,I+k.i,O+k.i)$

#### Indirect plans

Indirect plans transform DFT problems that require shuffling into a problem 
that requires no shuffling + rank-0 problem that requires shuffling

$dft(N,V,I,O) |N| \ge 0$ can be solved by solving $dft(\{\}, V, I, O)$ and 
then solving $dft(copy\_o(N), copy\_o(V), O, O)$

#### Other plans

- Buffer plans solve out-of-place or non-contiguous memory problems.
- Real/Imaginary plans - solving read and imaginary separate then combine them
- Parallel - Distributed and Threaded

### Avenues to explores

- User codelets
