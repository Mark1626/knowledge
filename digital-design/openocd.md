# OpenOCD

[Back](../index.md#digital-design){: .button}

OpenOCD provides onchip debugging support. When invoking OpenOCD we define what we are debugging in the config

Example for the ARM-USB-TINY-H debugger

```
source [find interface/ftdi/olimex-arm-usb-tiny-h.cfg]

# or manually specify the device

interface ftdi
ftdi_device_desc "Olimex OpenOCD JTAG ARM-USB-TINY-H"
ftdi_vid_pid 0x15ba 0x002a

ftdi_layout_init 0x0808 0x0a1b
ftdi_layout_signal nSRST -oe 0x0200
ftdi_layout_signal nTRST -data 0x0100 -oe 0x0100
ftdi_layout_signal LED -data 0x0800
