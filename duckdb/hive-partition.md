# Hive Partitioned Parquet files

[Back](../index.md#duckdb)

```
select * from
  read_parquet("<path-to>/tpcds_1_delta/store_sales/*/*.parquet", hive_partitioning=true);
```

