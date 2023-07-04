# Bambu HLS

[Back](../index.md)

## Usage

1. Download the Bambu AppImage
2. Run bambu on the C file, this will generate the necessary verilog code and the necessary scripts for synthesis
3. Optimization flags have impact on the final design
    a. -O3
    b. -ftree-vectorize
    c. -finline-limit=100000

## Commands

```
# Basic usage
bambu <file> --top-fname=<top-fn>
bambu main.c --top-fname=top

# Generate Verilog for given device
bambu <file> --top-fname=<top-fn> --device-name=<device-name>
bambu main.c --top-fname=top --device-name=xc7a100t-1csg324-VVD

# Generate Verilog for given device at given clock frequency
bambu <file> --top-fname=<top-fn> --device-name=<device-name>
bambu main.c --top-fname=top --device-name=xc7a100t-1csg324-VVD --clock-period=10

# Create test bench
bambu <file> --top-fname=<top-fn> --device-name=<device-name> --simulator=VERILATOR
# Run the simulation
./simulate_*.sh

# 

```
