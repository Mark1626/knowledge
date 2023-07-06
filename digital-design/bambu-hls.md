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

```

## Memory interfaces

## Default behaviour

For the following code

```c
void min_max(int * input, int num_elements, int * max, int * min)
{
   int local_max = input[0];
   int local_min = input[0];
   int i = 0;
   for(i = 0; i < num_elements; i++)
   {
      if(input[i] > local_max)
      {
         local_max = input[i];
      }
      else if(input[i] < local_min)
      {
         local_min = input[i];
      }
   }
   *min = local_min;
   *max = local_max;
}
```

the signals created will be 

```
input clock                       - Clock
input reset;                      - Reset
input start_port;                 - Start port
input [31:0] \input               - Base address to read from
input [31:0] num_elements         - User args
input [31:0] \max ;               - User args
input [31:0] \min ;               - User args
input [63:0] M_Rdata_ram;         - RData from RAM to module
input [1:0] M_DataRdy;            - RAM sets this signal to High to receieve request
// OUT
output done_port;                 - Done port
output [1:0] Mout_oe_ram;         - Output enable
output [1:0] Mout_we_ram;         - Write Enable
output [63:0] Mout_addr_ram;      - Address of RAM
output [63:0] Mout_Wdata_ram;     - Value to write to RAM
output [11:0] Mout_data_ram_size  - Size of valid bits in response
```

### Passing reference

If we are returning a value by passing the pointer then we need to use the `HLS_interface` `none` clause

```c
#pragma HLS_interface <variable_name> none
```

```c
#pragma HLS_interface c none
void sum(int a, int b, int *c)
{
   *c = a + b;
}
```

### If we want an AXI interface

```c
#pragma HLS_interface <variable_name> m_axi direct bundle=<bundle_name>
```

```c
#pragma HLS_interface a m_axi direct
int reduce(int *a, int n)
{
   *c = a + b;
}
```
