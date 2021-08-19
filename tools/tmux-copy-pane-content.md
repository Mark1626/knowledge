# Tmux Copy Content of pane

[Back](../index.md#tmux){: .button}

```
# Go to command mode
<prefix> + :

# Capture last 3000 lines
capture-pane -S -3000 + Return

<prefix> + :

# Save buffer to file
save-buffer <filename.txt> + Return

```

