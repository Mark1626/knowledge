# Git tags

[Back](../index.md){: .button}

## Types of tags

### Lightweight tags

```
git tag v1.2
```

This only contains information to point to a particular commit

### Annotated tags

```
git tag -a v1.2
git tag -a v1.2 -m "Version 1.2"
```

This can contain other data about the tag, message, tagger information

## List tags

```sh
git tag
git tag -l <wildcard>

git tag -l "v1.0.*"
```

## Push tag to remote

```sh
git push origin <tag>
```

## Deleting tags

```
git tag -d v1.2
```