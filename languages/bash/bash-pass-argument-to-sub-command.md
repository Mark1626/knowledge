# Bash pass env variable to subcommand

[Back](../../index.md#bash){: .button}

`getopts` parses till `--`, by shifting by `$OPTIND - 1` the remaining params can be passed

```bash
# <script> -a "something" -- -passed -on args

while getopts "a:h?" opt
  do
    case "$opt" in
    [h?])
      help_build
      exit 0
      ;;
    # get opt code
    a)
      # Some handling
      ;;
    *)
      help_build
      exit 1
      ;;
    esac
  done

  shift $(($OPTIND - 1))
  echo "Args passed $@"
```
