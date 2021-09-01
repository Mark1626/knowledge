# SSH Config

[Back](../index.md#unix){: .button}

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

### Zettle

Id: e2268da4e03406d01fd35f1945f8bf46  
