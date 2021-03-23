# git bisect

[Back](../index.md){: .button}

Catching the commit which introduced a bug with `git-bisect`

## Manually marking commits

- `git bisect start HEAD <SHA-1> --`
- This marks `<SHA-1>` as the first place we know there isn't bugs, and `HEAD` as the place where we know the bug is present. We will start at the midway of all the commits
  + `git bisect good` will mark the commit to not have bugs and move to the next section
  + `git bisect bad` will mark the commit to have bugs
- `git bisect reset`

## Marking commits with run

- `git bisect start HEAD <SHA-1> --`
- `git bisect run <cmd>`
- `git bisect reset`

#### Example

- `git bisect start HEAD HEAD~10 --`
- `git bisect run yarn test`
- `git bisect reset`
