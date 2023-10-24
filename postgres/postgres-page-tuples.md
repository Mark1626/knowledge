# Postgresql check the pages and tuple count for relationship

[Back](./postgres.md){: .button}

The count of `Pages` and `Tuples` can be seen in the `pg_class` tables

```sql
nimalanm=# SELECT relname, relpages, reltuples FROM pg_class WHERE relname like '%de_books%';
      relname      | relpages | reltuples
-------------------+----------+-----------
 de_books_id_seq   |        1 |         1
 de_books_pkey     |        1 |         0
 de_books_uuid_key |        1 |         0
 de_books          |        0 |         0
(4 rows)
```

The count shown is of the last `VACCUM` or `ANALYSE`. In the above case I have a row in the table, running `ANALYSE` updates the count

```sql
nimalanm=# analyse;
ANALYZE
nimalanm=# SELECT relname, relpages, reltuples FROM pg_class WHERE relname like '%de_books%';
      relname      | relpages | reltuples
-------------------+----------+-----------
 de_books_id_seq   |        1 |         1
 de_books_pkey     |        2 |         1
 de_books_uuid_key |        2 |         1
 de_books          |        1 |         1
(4 rows)
```

## References

- [Row Estimation](https://www.postgresql.org/docs/12/row-estimation-examples.html)
