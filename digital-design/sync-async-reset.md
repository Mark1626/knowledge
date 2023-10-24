# Synchronous Reset

[Back](./digital-design.md)

## Synchronous Reset

A synchronous reset signal will only affect or reset the state of the flip-flop on the active edge of the clock. The reset signal is applied as is any other input to the state machine.

## Asynchronous Reset

An asynchronous reset will affect or reset the state of the flip-flop asynchronously i.e. no matter what the clock signal is. This is considered as high priority signal and system reset happens as soon as the reset assertion is detected.

