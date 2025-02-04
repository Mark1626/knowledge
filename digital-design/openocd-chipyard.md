# OpenOCD on Chipyard Designs

[Back](../index.md#digital-design){: .button}

## Reading

1. [https://chipyard.readthedocs.io/en/stable/Advanced-Concepts/Chip-Communication.html#debugging-with-jtag](https://chipyard.readthedocs.io/en/stable/Advanced-Concepts/Chip-Communication.html#debugging-with-jtag)
2. [https://github.com/chipsalliance/rocket-chip#4-launch-openocd](https://github.com/chipsalliance/rocket-chip#4-launch-openocd)
3. [https://xpack.github.io/dev-tools/openocd/](https://xpack.github.io/dev-tools/openocd/)

```
# sims/verilator
make CONFIG=RocketConfig BINARY=none \
    SIM_FLAG="+jtag_rbb_enable=1 --rbb-port=9823" \
    run-binary

# OpenOCD
openocd -f cemulator.cfg

# Start GDB
riscv64-unknown-elf-gdb hello.riscv
```


```
$ cat cemulator.cfg
interface remote_bitbang
remote_bitbang_host localhost
remote_bitbang_port 9823

set _CHIPNAME riscv
jtag newtap $_CHIPNAME cpu -irlen 5

set _TARGETNAME $_CHIPNAME.cpu
target create $_TARGETNAME riscv -chain-position $_TARGETNAME

gdb_report_data_abort enable

init
halt
```
