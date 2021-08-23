# Bash get script directory

[Back](../../index.md){: .button}

In Bash the current script directory can be found as follows, this is important when sourcing a script relative to the parent script into execution

```bash
script_dir=$(dirname "${BASH_SOURCE[0]}")
source $script_dir/script_2.sh
```
