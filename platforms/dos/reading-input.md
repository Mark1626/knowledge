# Reading Input

[Back](../../index.md){: .button}

### Check for escape

```
in  al, 60h
dec ax        ; if Esc ax become zero
jnz mainloop
```

---

### Check for any input

```
in  al, 60h
das           ;  parity flag is set if non-zero
jp  mainloop
```

