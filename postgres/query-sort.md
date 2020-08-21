# Understanding Sort in Postgres

[Back](../index.md){: .button}

When the memory used for sorting is less than `work_mem`, sorting is done in memory. Notice that the sort method is `quicksort`

```
nimalanm@/tmp:test_db> explain analyse select random() x from generate_series(1, 15000) i order by x;
+--------------------------------------------------------------------------------------------------------------------------------+
| QUERY PLAN                                                                                                                     |
|--------------------------------------------------------------------------------------------------------------------------------|
| Sort  (cost=1227.95..1265.45 rows=15000 width=8) (actual time=6.051..7.174 rows=15000 loops=1)                                 |
|   Sort Key: (random())                                                                                                         |
|   Sort Method: quicksort  Memory: 1088kB                                                                                       |
|   ->  Function Scan on generate_series i  (cost=0.00..187.50 rows=15000 width=8) (actual time=0.887..2.312 rows=15000 loops=1) |
| Planning Time: 0.032 ms                                                                                                        |
| Execution Time: 8.206 ms                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------+
EXPLAIN
Time: 0.025s
```

When the memory exceed the `work_mem` than sort will be done in disk, note that the sort method has changed to merge sort.
Postgres will use temporary files stored in $PGDATA/base/pgsql\_tmp/ directory

```
nimalanm@/tmp:test_db> explain analyse select random() x from generate_series(1, 65000) i order by x;
+---------------------------------------------------------------------------------------------------------------------------------+
| QUERY PLAN                                                                                                                      |
|---------------------------------------------------------------------------------------------------------------------------------|
| Sort  (cost=6008.65..6171.15 rows=65000 width=8) (actual time=39.139..45.982 rows=65000 loops=1)                                |
|   Sort Key: (random())                                                                                                          |
|   Sort Method: external merge  Disk: 1152kB                                                                                     |
|   ->  Function Scan on generate_series i  (cost=0.00..812.50 rows=65000 width=8) (actual time=3.984..10.441 rows=65000 loops=1) |
| Planning Time: 0.026 ms                                                                                                         |
| Execution Time: 51.986 ms                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------+
EXPLAIN
Time: 0.070s

```

When a limit is present the sort method will change

```
nimalanm@/tmp:test_db> explain analyse select random() x from generate_series(1, 65000) i order by x limit 5;
+--------------------------------------------------------------------------------------------------------------------------------------+
| QUERY PLAN                                                                                                                           |
|--------------------------------------------------------------------------------------------------------------------------------------|
| Limit  (cost=1892.13..1892.14 rows=5 width=8) (actual time=16.956..16.957 rows=5 loops=1)                                            |
|   ->  Sort  (cost=1892.13..2054.63 rows=65000 width=8) (actual time=16.955..16.956 rows=5 loops=1)                                   |
|         Sort Key: (random())                                                                                                         |
|         Sort Method: top-N heapsort  Memory: 25kB                                                                                    |
|         ->  Function Scan on generate_series i  (cost=0.00..812.50 rows=65000 width=8) (actual time=3.600..9.881 rows=65000 loops=1) |
| Planning Time: 0.029 ms                                                                                                              |
| Execution Time: 17.557 ms                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------+
EXPLAIN
Time: 0.035s

```

In Big O notation, general sort has complexity of `O(m * log(m))`, but Top-N has complexity of `O(m * log(n))` – where m is number of rows in table, and n is number of returned rows


