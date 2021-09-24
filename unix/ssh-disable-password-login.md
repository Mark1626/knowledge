# ssh disable password login

`/etc/ssh/sshd_config`

```
# Change to no to disable tunnelled clear text passwords
#PasswordAuthentication no
```

restart ssh service in systemd

```
service ssh restart
```
