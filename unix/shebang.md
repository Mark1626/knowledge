# Shebang

[Back](../index.md){: .button}

A shebang is used to tell which interpretor to use to parse the file

```sh
#!interpreter [arguments]
```

### Shebang Best practices

Use the `env` utility in shebang instead of absolute path

```sh
#!/usr/bin/env bash
```

instead of

```sh
#!/bin/bash
```

