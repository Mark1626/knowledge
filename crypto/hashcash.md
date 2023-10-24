# Hashcash

[Back](./cryptography.md){: .button}

```
version:claimedBits:timestamp:resource:extension:randomValue:counter

1:20:040806:foo::65f460d0726f420d:13a6b8
1:20:210216:test@abc.com::91b93a6c71b9783e:bd7483b9a210110

echo -n 1:20:210216:test@abc.com::91b93a6c71b9783e:bd7483b9a210110 | sha1sum

000009a30631d8004be47081cad6b089a2379288
```

- `version` : Hashcash version
- `claimedBits` : Number of leading zero bits in the stamp
- `timestamp` : Timestamp in format YYMMDD
- `resource` : Content of stamp
- `counter` : This is incremented to find a partial collision

## References

- [Hashcash dev reference](http://www.hashcash.org/dev/)

