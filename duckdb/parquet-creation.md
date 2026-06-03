# Parquet Creation

[Back](../index.md#duckdb)

DuckDB can be used to create parquet from CSVs

```sh
duckdb -c "COPY (SELECT * FROM read_csv('pi_window.txt', header=false,
  columns={'digits':'VARCHAR'})) TO 'pi_window.parquet' (FORMAT parquet, COMPRESSION zstd)"
```
