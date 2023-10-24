# Explain on Join

[Back](./postgres.md){: .button}

## Hash Join

```bash
nimalanm@/tmp:join_test> explain analyse select * from base b join child ON child.id = b.child_id;
+-----------------------------------------------------------------------------------------------------------+
| QUERY PLAN                                                                                                |
|-----------------------------------------------------------------------------------------------------------|
| Hash Join  (cost=38.58..63.74 rows=1200 width=76) (actual time=0.006..0.006 rows=0 loops=1)               |
|   Hash Cond: (b.child_id = child.id)                                                                      |
|   ->  Seq Scan on base b  (cost=0.00..22.00 rows=1200 width=40) (actual time=0.005..0.005 rows=0 loops=1) |
|   ->  Hash  (cost=22.70..22.70 rows=1270 width=36) (never executed)                                       |
|         ->  Seq Scan on child  (cost=0.00..22.70 rows=1270 width=36) (never executed)                     |
| Planning Time: 0.097 ms                                                                                   |
| Execution Time: 0.024 ms                                                                                  |
+-----------------------------------------------------------------------------------------------------------+
EXPLAIN
Time: 0.017s
```

Two operations take plan, `Hash` and the other sub operation

Next
- The sub operation will run `seq scan` on base
- Check if join key exists in result of hash
  - No, ignore the key
  - Yes, fetch the rows

### Aggregate

```bash
nimalanm@/tmp:join_test> explain analyse select count(*) from base join child ON child.id = base.child_id where length(base.name) > 20;
+--------------------------------------------------------------------------------------------------------------------+
| QUERY PLAN                                                                                                         |
|--------------------------------------------------------------------------------------------------------------------|
| Aggregate  (cost=141.58..141.59 rows=1 width=8) (actual time=1.329..1.329 rows=1 loops=1)                          |
|   ->  Hash Join  (cost=26.16..140.74 rows=333 width=0) (actual time=0.191..1.311 rows=86 loops=1)                  |
|         Hash Cond: (child.id = base.child_id)                                                                      |
|         ->  Seq Scan on child  (cost=0.00..80.00 rows=5000 width=4) (actual time=0.008..0.560 rows=5000 loops=1)   |
|         ->  Hash  (cost=22.00..22.00 rows=333 width=4) (actual time=0.155..0.156 rows=86 loops=1)                  |
|               Buckets: 1024  Batches: 1  Memory Usage: 12kB                                                        |
|               ->  Seq Scan on base  (cost=0.00..22.00 rows=333 width=4) (actual time=0.009..0.142 rows=86 loops=1) |
|                     Filter: (length(name) > 20)                                                                    |
|                     Rows Removed by Filter: 914                                                                    |
| Planning Time: 0.138 ms                                                                                            |
| Execution Time: 1.381 ms                                                                                           |
+--------------------------------------------------------------------------------------------------------------------+
EXPLAIN
Time: 0.019s
```

When a criteria is present some additional steps will occur
- `seq scan` on base and create buckets
- Apply filter and remove unnecessary rows
- Join if key exists on base

## HashAggregate

```
nimalanm@/tmp:join_test> explain analyse select child_id, count(*) c from base group by child_id;
+-----------------------------------------------------------------------------------------------------------+
| QUERY PLAN                                                                                                |
|-----------------------------------------------------------------------------------------------------------|
| HashAggregate  (cost=22.00..30.93 rows=893 width=12) (actual time=0.422..0.563 rows=893 loops=1)          |
|   Group Key: child_id                                                                                     |
|   ->  Seq Scan on base  (cost=0.00..17.00 rows=1000 width=4) (actual time=0.010..0.116 rows=1000 loops=1) |
| Planning Time: 0.046 ms                                                                                   |
| Execution Time: 0.695 ms                                                                                  |
+-----------------------------------------------------------------------------------------------------------+
EXPLAIN
Time: 0.027s
```

For every row find `GROUP BY` key, then put the given row in designated bucket

> **Note**:  `HashAggregate` has to scan all the rows before it can return a single row

If there are a huge number of rows the hash will be too big to fit into `worker_mem`, it will spill into disk

> **Note**: If we have `HashAggregate` and `Sort`, we can use up to **2 x worker_mem**

```
nimalanm@/tmp:join_test> explain analyse select child_id, count(*) c from base group by child_id order by child_id;
+-----------------------------------------------------------------------------------------------------------------+
| QUERY PLAN                                                                                                      |
|-----------------------------------------------------------------------------------------------------------------|
| Sort  (cost=74.70..76.93 rows=893 width=12) (actual time=1.032..1.097 rows=893 loops=1)                         |
|   Sort Key: child_id                                                                                            |
|   Sort Method: quicksort  Memory: 66kB                                                                          |
|   ->  HashAggregate  (cost=22.00..30.93 rows=893 width=12) (actual time=0.641..0.790 rows=893 loops=1)          |
|         Group Key: child_id                                                                                     |
|         ->  Seq Scan on base  (cost=0.00..17.00 rows=1000 width=4) (actual time=0.032..0.173 rows=1000 loops=1) |
| Planning Time: 0.137 ms                                                                                         |
| Execution Time: 1.272 ms                                                                                        |
+-----------------------------------------------------------------------------------------------------------------+
EXPLAIN
Time: 0.020s
```

## Nested Loop

```
nimalanm@/tmp:join_test> explain analyse select * from base join child ON child.id = base.child_id where base.child_id in (100, 1001) ;
+------------------------------------------------------------------------------------------------------+
| QUERY PLAN                                                                                           |
|------------------------------------------------------------------------------------------------------|
| Nested Loop  (cost=0.28..36.10 rows=2 width=36) (actual time=0.102..0.102 rows=0 loops=1)            |
|   ->  Seq Scan on base  (cost=0.00..19.50 rows=2 width=20) (actual time=0.102..0.102 rows=0 loops=1) |
|         Filter: (child_id = ANY ('{100,1001}'::integer[]))                                           |
|         Rows Removed by Filter: 1000                                                                 |
|   ->  Index Scan using child_pkey on child  (cost=0.28..8.30 rows=1 width=16) (never executed)       |
|         Index Cond: (id = base.child_id)                                                             |
| Planning Time: 0.139 ms                                                                              |
| Execution Time: 0.117 ms                                                                             |
+------------------------------------------------------------------------------------------------------+
EXPLAIN
Time: 0.026s
```

- Run `seq scan` on base filtering based on criteria
- Loop through the child table for each row filtered
- In this case since the Pk is the join column the looping is skiped


## Merge Join

```
nimalanm@/tmp:join_test> explain analyse select * from (select * from base order by child_id) b join (select * from child order by id) c on b.child_id = c.id;
+---------------------------------------------------------------------------------------------------------------------------------+
| QUERY PLAN                                                                                                                      |
|---------------------------------------------------------------------------------------------------------------------------------|
| Merge Join  (cost=67.35..329.17 rows=1000 width=36) (actual time=0.377..2.685 rows=1000 loops=1)                                |
|   Merge Cond: (child.id = base.child_id)                                                                                        |
|   ->  Index Scan using child_pkey on child  (cost=0.28..172.43 rows=5000 width=16) (actual time=0.024..1.063 rows=4999 loops=1) |
|   ->  Materialize  (cost=66.83..81.83 rows=1000 width=20) (actual time=0.345..0.712 rows=1000 loops=1)                          |
|         ->  Sort  (cost=66.83..69.33 rows=1000 width=20) (actual time=0.343..0.507 rows=1000 loops=1)                           |
|               Sort Key: base.child_id                                                                                           |
|               Sort Method: quicksort  Memory: 93kB                                                                              |
|               ->  Seq Scan on base  (cost=0.00..17.00 rows=1000 width=20) (actual time=0.018..0.122 rows=1000 loops=1)          |
| Planning Time: 0.215 ms                                                                                                         |
| Execution Time: 2.796 ms                                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------------+
EXPLAIN
Time: 0.026s
```

If both data sets are sorted Merge Join is done

Steps

- If join column is same on both sides.
  - Get new joined row, based on current rows on both sides
  - get next row on right, or left is right is over
  - End if no more rows left
- If right column is smaller
  - Get row from right
  - End if no more rows left
- If left column is smaller
  - Get row from left
  - End if no more rows left

