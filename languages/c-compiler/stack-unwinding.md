# Stack unwinding

[Back](../../index.md#c-cpp-compiler){: .button}

Stack unwinding is part of exception handling in C++

`void *__gxx_personality_v0;` is a symbol used for stack unwinding.

If you run into a problem with that this symbol not present, you would need to add it via the `LDFLAGS` `-lstdc++`

## Reference

- [What in gxx\_personality\_v0](https://stackoverflow.com/questions/329059/what-is-gxx-personality-v0-for)
- [C++ Exception Handling under the hood](https://stackoverflow.com/questions/307610/how-do-exceptions-work-behind-the-scenes-in-c#307716)
