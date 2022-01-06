---
author: Nimalan aka mark1626
title: SQLite Extension for computing quantiles based on t-digest
abstract: This article outlines an idea for creating a t-digest SQLite extension for computing quantiles.
---

# Introduction

The efficiency of t-digest has been seen in Elasticsearch, Apache Lucene. SQLite extensions[^1] allow for extending  SQLite adding user defined functions, virtual tables. SQLite could benefit from having a t-digest implementation for itself.

[^1]: [https://www.sqlite.org/loadext.html](https://www.sqlite.org/loadext.html)

# Previous Work

Reference implementations of T-Digest include the original Ted Dunning's version and the Derrick Burns's C++ implementation.

t-digest has also been implemented in Redis and Postgresql.

# Idea

t-digest can be implemented in C and a SQLite extension can be created to allow accessing quantile from within sqlite. There is also a possibility of persisting the computed t-digest in a table allowing for quick access in subsequent series. Note that in this approach the digest will have to be recomputed whenever rows are deleted from the table

# Conclusion

This idea of an SQLite extension could translate well into other RDBMS allowing for gaining capability in the Data Engineering front.

# References

- Dunning, T. (2018). The t-digest: Efficient estimates of distributions. `https://www.sciencedirect.com/science/article/pii/S2665963820300403`. Software Impacts, Volume 7, 2021, ISSN 2665-9638,`https://doi.org/10.1016/j.simpa.2020.100049`.
- [tdunning, 2015](https://github.com/tdunning/t-digest/). A new data structure for accurate on-line accumulation of rank-based statistics. `https://github.com/tdunning/t-digest/`. [Online; accessed December-2021]
- [derrickburns, 2016](https://github.com/derrickburns/tdigest). C++ version of Ted Dunning's merging t-digest. `https://github.com/derrickburns/tdigest`. [Online; accessed December-2021]
- [usmanm, 2015](https://github.com/usmanm), t-digest module for Redis. `https://github.com/usmanm/redis-tdigest`. [Online; accessed 31-December-2021].
- [tvondra, 2015](https://github.com/tvondra), PostgreSQL extension for estimating percentiles using t-digest. `https://github.com/tvondra/tdigest`. [Online; accessed 31-December-2021].
