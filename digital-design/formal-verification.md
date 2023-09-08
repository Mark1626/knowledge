# Formal Verification

[Back](../index.md#digital-design)

Formal Verification is a technique to mathematically verify the design. yosys has support for formal verification. Yosys converts verilog into SMT2 files which can then be formally verified

## Bounded and Unbounded methods

Bounded methods only consider states reachable within N time steps from initial states.

Unbounded methods consider all reachable states, regardless of the number of time steps required to reach them from the initial states.


BMC (bounded model check) is a bounded method.

Temporal Induction can be used as a simple method for performing unbounded proofs with a bounded solver

## Solvers

1. z3
2. yices2 [https://github.com/SRI-CSL/yices2](https://github.com/SRI-CSL/yices2)


## Formally Verifying Verilog

### Manually using Yosys


1. Call yosys and generate the SMT2 file for the input verilog
2. There are a couple of passes you will have to make it work
3. Run yosys-smtbmt with the desired solver for both BMC and Induction

#### Example Makefile

```
tcounter: tcounter.v counter.v
	iverilog -o tcounter tcounter.v counter.v

run-tb: tcounter
	vvp tcounter

check.smt2: counter.v
	yosys -v2 -p 'read_verilog -formal counter.v' \
					 -p 'prep -top counter -nordff' \
					 -p 'assertpmux -noinit; opt -fast; async2sync; dffunmap' \
					 -p 'write_smt2 -wires check.smt2'

verify: check.smt2
	yosys-smtbmc -s z3 -t 30 --dump-vcd check.vcd check.smt2
	yosys-smtbmc -s z3 -t 30 --dump-vcd check.vcd -i check.smt2

.PHONY: run-tb verify
```

### sby

1. Run `sby --init-confif-file top` to generate a config file
2. Modify the config file to import your code
3. Run sby with `sby -f top.sby`

#### Example sby config

```
[options]
mode bmc

[engines]
smtbmc z3

[script]
read -formal counter.v
prep -top counter

[files]
counter.v
```


## Reading

1. [https://technodocbox.com/C_and_CPP/71383297-Formal-verification-with-yosys-smtbmc-clifford-wolf.html](https://technodocbox.com/C_and_CPP/71383297-Formal-verification-with-yosys-smtbmc-clifford-wolf.html)
2. [https://zipcpu.com/blog/2017/10/19/formal-intro.html](https://zipcpu.com/blog/2017/10/19/formal-intro.html)
