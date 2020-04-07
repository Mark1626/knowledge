# Systemd

[systemd](https://wiki.archlinux.org/index.php/Systemd) is a suite of basic building blocks for a Linux system. It provides a system and service manager that runs as PID 1 and starts the rest of the system. systemd provides aggressive parallelization capabilities

## Service File
```toml
[Unit]
Description=My Miscellaneous Service
After=network.target

[Service]
Type=simple
# Another Type: forking
User=nanodano
WorkingDirectory=/home/nanodano
ExecStart=/home/nanodano/my_daemon --option=123
Restart=on-failure
# Other restart options: always, on-abort, etc

# The install section is needed to use
# `systemctl enable` to start on boot
# For a user service that you want to enable
# and start automatically, use `default.target`
# For system level services, use `multi-user.target`
[Install]
WantedBy=multi-user.target
```

## Systemd Basics

### Control whether service loads on boot
`sudo systemctl enable my_service`  
`sudo systemctl disable my_service`

### Manual start and stop
`sudo systemctl start my_service`  
`sudo systemctl stop my_service`

### Restarting/reloading
`sudo systemctl daemon-reload # Run if .service file has changed`  
`sudo systemctl restart my_restart`

### Or if working with a user service add --user flag
`systemctl --user restart my_user_service`

## Cheking the logs

### See if running, uptime, view latest logs
`sudo systemctl status`  
`sudo systemctl status my_service`
### Or for a user service
`systemctl --user status my_service`

### See all systemd logs
`sudo journalctl`

### Tail logs
`sudo journalctl -f`

### Show logs for specific service
`sudo journalctl -u my_daemon`
### For user service
`journalctl --user-unit my_user_daemon`
