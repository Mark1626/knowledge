# Bash Completions

[Back](../../index.md#bash)

## Basic completion

```bash
#/usr/bin/env bash
_foo()
{
  COMPREPLY=($(compgen -W "help configure run"))
}

complete -F _foo foo

```

## Nested subcommand completion

Given a command `foo` that has subcommands `foo [configure/show] [options]`

```bash
#/usr/bin/env bash
# bash-completion.bash
# source ./bash-completion.bash

_foo()
{
    local cur prev

    cur=${COMP_WORDS[COMP_CWORD]}
    prev=${COMP_WORDS[COMP_CWORD-1]}

    case ${COMP_CWORD} in
        1)
            COMPREPLY=($(compgen -W "configure show" -- ${cur}))
            ;;
        2)
            case ${prev} in
                configure)
                    COMPREPLY=($(compgen -W "CM DSP NPU" -- ${cur}))
                    ;;
                show)
                    COMPREPLY=($(compgen -W "some other args" -- ${cur}))
                    ;;
            esac
            ;;
        *)
            COMPREPLY=()
            ;;
    esac
}

complete -F _foo foo
```

## References

1. https://stackoverflow.com/questions/17879322/how-do-i-autocomplete-nested-multi-level-subcommands
2. https://iridakos.com/programming/2018/03/01/bash-programmable-completion-tutorial

