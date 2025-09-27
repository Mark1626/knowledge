# ARC

[Back](../../index.md#rust)

Arc stands for Atomic Reference Counting. It's a thread-safe reference-counting pointer used for shared ownership of data across multiple threads.

1. Arc allows multiple threads to share ownership of the same data.
2. Unlike Rc<T> (Reference Counting), which is non-thread-safe, Arc uses atomic operations for reference counting, making it safe for concurrent use
3. There are essentially atomic shared pointers

