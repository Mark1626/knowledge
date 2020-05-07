# SSH Config

To use multiple ssh keys for different git servers, use a `ssh config` file

*~/.ssh/config*
```
Host github.com
  IdentityFile ~/.ssh/id_rsa_github
Host savannah.nongnu.org
  IdentityFile ~/.ssh/id_rsa_savarna
```
