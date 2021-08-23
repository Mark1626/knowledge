# Bash subcommand

[Back](../../index.md#bash){: .button}

```bash
sub_help() {
    echo "Usage: $ProgName <subcommand> [options]"
    echo "Subcommands:"
    echo "    commandA Run commandA"
    echo "    commandB Run commandB"
    echo ""
    echo "For help with each subcommand run:"
    echo "$ProgName <subcommand> -h|--help"
    echo ""
}

sub_commandA() {
  # Sub command A definition
}

sub_commandB() {
  # Sub command B definition
}

subcommand=$1
case $subcommand in
    "" | "-h" | "--help")
        sub_help
        ;;
    *)
        shift
        sub_${subcommand} $@
        if [ $? = 127 ]; then
            echo "Error: '$subcommand' is not a known subcommand." >&2
            echo "       Run '$ProgName --help' for a list of known subcommands." >&2
            exit 1
        fi
        ;;
esac

```
