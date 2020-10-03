# Relay Weechat

[Back](../index.md)

- Set a password for the relay
- Add the session as a relay

```
/set relay.network.passowrd <password>
/relay add weechat 9001
```

Create `weechat-headless` as a systemd service and start it within a `tmux` session

```toml
# ~/.config/systemd/user/weechat-headless.service
[Unit]
Description=A headless WeeChat client and relay service 
After=network.target

[Service]
Type=forking
ExecStart=/usr/bin/weechat-headless --daemon

[Install]
WantedBy=default.target
```

Enable and start the service

```
systemctl --user enable weechat.service
systemctl --user start weechat.service
```

> **Note:** Make sure it is with a `tmux` session, else the process will stop as it is a fork when the `ssh` session is over


# References

- [Gentoo Wiki](https://wiki.gentoo.org/wiki/WeeChat/Glowing_Bear_Guide)
- [Arch Wiki](https://wiki.archlinux.org/index.php/WeeChat)

