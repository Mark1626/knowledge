# Git Reflog

[Back](../index.md#git)

git reflog tracks changes in HEAD, if let's say a merge commit or rebase needs to be removed from the tree, the reflog can be used.

```
git reflog
git reset --hard <reflog-event> # eg) HEAD@{20}
```

