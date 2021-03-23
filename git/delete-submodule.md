# Git delete sub-module

[Back](../index.md){: .button}

If the name of your submodule is `a/submodule`

- `git submodule deinit -f -- a/submodule`
- `rm -rf .git/submodules/a/submodule`
- `git rm -f a/submodule`
