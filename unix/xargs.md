# Xargs

[Back](../index.md){: .button}


### Example Usage

```sh
  find . -name "*.o" | xargs rm
```

#### Flags

##### `-P` Number of processes to use

```sh
  find . -name "*.o" | xargs -P 24 rm
```

##### `-I`

> Not a good example, bit just to show the usage
```sh
  find . -name "*.c" | xargs -I '{}' mv '{}' folder/'{}'
```
