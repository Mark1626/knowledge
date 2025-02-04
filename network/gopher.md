# Gopher

[Back](../index.md#network){: .button}

Gopher is a communications protocol for distributing, searching and retriving
 documents. It is fairly simple and uses very few resources

A typical response of a gopher call.

```
0about.txt	/about.txt/	localhost	70
0first page.txt	/first_page.txt/	localhost	70
.

```

## Clients

- `curl` supports gopher out of the box
- `lynx` can be used to browse `gopher` pages easily, it opens it up as a gopher menu to consume

## Servers

- `redis` supports serving `gopher` requests

### References

- https://github.com/antirez/gopher2redis
