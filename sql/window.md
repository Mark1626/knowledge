# SQL Window Function

[Back](../index.md#sql)

## ROW\_NUMBER(), RANK()

```sql
memory D WITH T(StyleID, ID)
              AS (SELECT 1,1 UNION ALL
                  SELECT 1,1 UNION ALL
                  SELECT 1,1 UNION ALL
                  SELECT 1,2)
         SELECT *,
                RANK() OVER(PARTITION BY StyleID ORDER BY ID)       AS RANK,
                ROW_NUMBER() OVER(PARTITION BY StyleID ORDER BY ID) AS ROW_NUMBER,
                DENSE_RANK() OVER(PARTITION BY StyleID ORDER BY ID) AS DENSE_RANK
         FROM   T
         ;
┌─────────┬───────┬───────┬────────────┬────────────┐
│ StyleID │  ID   │ RANK  │ ROW_NUMBER │ DENSE_RANK │
│  int32  │ int32 │ int64 │   int64    │   int64    │
├─────────┼───────┼───────┼────────────┼────────────┤
│       1 │     1 │     1 │          1 │          1 │
│       1 │     1 │     1 │          2 │          1 │
│       1 │     1 │     1 │          3 │          1 │
│       1 │     2 │     4 │          4 │          2 │
└─────────┴───────┴───────┴────────────┴────────────┘
memory D
```

