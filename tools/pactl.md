# Set audio device with pactl

[Back](../index.md#pactl){: .button}

- List available devices

```
pactl list short sources
```

- Select a device

```
pactl set-default-sink <device-name>
```

