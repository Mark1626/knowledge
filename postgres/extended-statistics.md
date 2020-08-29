# Postgres Extended Statistics

Refer to my blog [here](https://mark1626.github.io/2020/08/29/extended-statistics.html) for a much detailed example


## Types of statistics

### Functional Dependencies

This is used when there is correlation between two or more columns

```sql
CREATE STATISTICS stts (dependencies) ON a, b FROM t;
```

### Multivariate N-Distinct Counts

This is used when multiple columns would be used along mith `GROUP BY` clause. When `GROUP BY` lists a single column, the n-distinct is accurate

```sql
CREATE STATISTICS stts (dependencies, ndistinct) ON a, b FROM t;
```

### MCV Lists

MCV (most-common values) lists. This creates all combinations and addresses storing individual values, bit it is more expensive

```sql
CREATE STATISTICS stts2 (mcv) ON a, b FROM t;
```
