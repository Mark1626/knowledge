# OnceLock

[Back](../../index.md#rust)

OnceLock is a container where writting blocks threads and reading does not block threads

```rs
use std::sync::OnceLock;

static CELL: OnceLock<usize> = OnceLock::new();

// `OnceLock` has not been written to yet.
assert!(CELL.get().is_none());

// Spawn a thread and write to `OnceLock`.
std::thread::spawn(|| {
    let value = CELL.get_or_init(|| 12345);
    assert_eq!(value, &12345);
})
.join()
.unwrap();

// `OnceLock` now contains the value.
assert_eq!(
    CELL.get(),
    Some(&12345),
);
```

## Reading

1. https://doc.rust-lang.org/stable/std/sync/struct.OnceLock.html#examples

