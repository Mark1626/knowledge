# zsh profiling

[Back](../index.md#unix)

In 

```zsh
At the top of ~/.zshrc
if [[ -n "$ZSH_DEBUGRC" ]]; then
  zmodload zsh/zprof
fi


# At the bottom of ~/.zshrc
if [[ -n "$ZSH_DEBUGRC" ]]; then
  zprof
fi

```

Profile your shell with 

```
time ZSH_DEBUGRC=1 zsh -i -c exit
```

## References

1. https://www.dotruby.com/articles/profiling-zsh-setup-with-zprof

