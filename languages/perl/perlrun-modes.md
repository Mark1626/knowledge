# perlrun modes

[Back](./perl.md){: .button}

## Modes

### -n

Assumes the following structure

```
while(<>) {
  // code goes here
}
```

**Example:**

```perl
cat test.txt | perl -ne 'chomp;print $_ . " ";'
```

### -p

Assumes the following structure and make it similar to `sed`

```
while(<>) {
  // code goes here
} continue {
  print or die "-p destination: $!\n";
}
```

**Example:**

```perl
cat test.txt | perl -pe 'chomp;'
```

### -u

Dumps code


## References

- [perlrun modes](https://perldoc.perl.org/perlrun)
