# OSX System Integrity Protection

[Back](../index.md#unix)

OSX purges DYLD_* environment variables, for executables in /usr/bin . I noticed this when I was launching the default LLDB for debugging

## Reading

1. https://developer.apple.com/library/archive/documentation/Security/Conceptual/System_Integrity_Protection_Guide/RuntimeProtections/RuntimeProtections.html
2. https://stackoverflow.com/questions/33587130/why-doesnt-lldb-forward-my-environment-variable-anymore

