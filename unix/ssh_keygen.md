# SSH key generation

[Back](../index.md#unix){: .button}

## Creating an ssh key

```sh
ssh-keygen -t rsa -b 4096
```

## Sending ssh file to remote machine

This is an easier way to send the public key to a server. This saves a lot of time by adding the public key to `authorized_keys`

```sh
ssh-copy-id -i ~/.ssh/id_rsa_key user@host
```
