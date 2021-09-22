# GPG

[Back](../index.md#gpg){: .button}

## Create gpg key

```
gpg --full-generate-key
```

## List all available secret keys

```
gpg --list-secret-keys --keyid-format=long
```

## Export public key

```
gpg --armor --export <keyid>
```

## Sign a message

```
echo "Hello" | gpg --sign --armour
```

## Configure gpg for tty

```
export GPG_TTY=$(tty)
```

> If this is not set you may get an error like `Inappropriate ioctl for device` when signing with your key

## Import keyring to the local key store

```
  gpg --import <keyring.gpg>
```

## Verify using keys in local key store

```
  gpg --verify <signature-file.sig> <file-to-verify>
```

## Enabling loopback pinentry mode

```
# ~/.gnupg/gpg.conf
use-agent 
pinentry-mode loopback
```

```
# ~/.gnupg/gpg-agent.conf
allow-loopback-pinentry
```

## Agent

### Restart Agent

```
echo RELOADAGENT | gpg-connect-agent
```

### Kill gpg agent

```
gpgconf --kill gpg-agent
```
