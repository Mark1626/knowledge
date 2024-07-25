# Bash getopts

[Back](../../index.md#bash)

`getopts` in bash is similar to `getopt.h`

```bash
while getopts "a:bh?" opt
do
  case "$opt" in
  [h?])
    echo "-h passed"
    exit 0
    ;;
  a)
    echo "Argument -a received with $OPTARG"
    ;;
  b)
    echo "Argument -b received"
    ;;
  *)
    echo "Default"
    exit 1
    ;;
  esac
done
```
