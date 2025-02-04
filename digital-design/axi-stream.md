# AXI Stream

[Back](../index.md#digital-design){: .button}

AXI Stream is a protocol used for transferring stream data around a chip. Stream data has no address associated with it.

`TVALID` indicates that a data in the stream is valid on the current clock cycle and produced by source. `TREADY` indicates that the consumer is prepared to accept the data. When both `TREADY` and `TVALID` is true data moves across the stream.

`TDATA` contains the data being transmitted, `TLAST` is used to indicate the end of a packet.

A stream also contains packet id `TID`, packet destination `TDEST`, which bytes have valid information `TSTRB`, which bytes in stream cannot be removed, and `TUSER`.

In AXI stream there is no limit to how much backpressure a slave can impose on any stream.


## Reading

- [ZipCPU AXI Steam is broken](https://zipcpu.com/blog/2022/02/23/axis-abort.html)
- [Debugging AXI Streams](https://zipcpu.com/dsp/2020/04/20/axil2axis.html)
