# Setup LLDB

[Back](./c-compiler.md){: .button}

To be able to set breakpoints in lldb compile the program with the `-g` flag

```make
CXXFLAGS=-Wall -Wextras -g
```

When compiled with `-g` in MacOS you will see that a folder `dSYM` will be created, this will contain debugging symbols of the app
