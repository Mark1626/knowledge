# Advanced_eXtensible_Interface(AXI)

[Back](../../index.md#bus){: .button}

AXI is an on-chip communication bus protocol developed by ARM

## Timing diagram

![AXI Timing diagram](https://en.wikipedia.org/wiki/Advanced_eXtensible_Interface#/media/File:AMBA_AXI_Handshake.svg)

1. The source sets the VALID to high to inform that data is not available in the channel.
2. The destination responds with a READY to inform that it is ready to read the channel.
3. In the next clock cycle when both are high data is considered transferred
4. The source can send another payload keeping VALID high or terminate

## Channels in AXI

- Read Address
- Read Data Channel
- Write Address
- Write Data Channel
- Write response

## Reference

1. https://en.wikipedia.org/wiki/Advanced_eXtensible_Interface
2. https://support.xilinx.com/s/article/1053914?language=en_US

## Reading 

1. https://support.xilinx.com/s/topic/0TO2E000000YNxCWAW/axi-basics-series?language=en_US&tabset-50c42=2
2. https://zipcpu.com/formal/2018/12/28/axilite.html
