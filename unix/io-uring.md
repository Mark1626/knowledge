# io-uring

[Back](../index.md#unix){: .button}

`io_uring` is an asynchronous system call API

The `io_uring` interface consists of `Submission queue entry(SQE)` and `Completion queue entry(CQE)`

These queues are ring buffers with certain depth/length. The setting up of these buffers are done with `io_uring_setup()`


### Reference

- [io uring by example](https://unixism.net/2020/04/io-uring-by-example-part-1-introduction)
- [io_uring specification](https://kernel.dk/io\_uring.pdf)

