# SSH Config

[Back](../index.md#unix){: .button}

## SSH keys for different hosts

To use multiple ssh keys for different git servers, use a `ssh config` file

`~/.ssh/config`
```
VisualHostKey true
Host github.com
  IdentityFile ~/.ssh/id_rsa_github
Host savannah.nongnu.org
  IdentityFile ~/.ssh/id_rsa_savarna
Host myserver
  IdentityFile ~/.ssh/id_rsa_server
  HostName <some-ip-address>
  User <some-username>
```

## Multiple accounts

When multiple accounts in the same host name

```
Host github.com
  User git
  IdentityFile ~/.ssh/main-user

Host github-personal
  HostName github.com
  User git
  IdentityFile ~/.ssh/personal-user
```

## Visual host key

This enables Fingerprint Visualization Algorithm whenever a ssh connection is made

`~/.ssh/config`

```
VisualHostKey true
```

### Zettle

Id: e2268da4e03406d01fd35f1945f8bf46  
