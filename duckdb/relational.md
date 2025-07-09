# DuckDB Relational API

[Back](../index.md#duckdb)
 
```cpp
#include "duckdb.hpp"
#include <iostream>

using namespace duckdb;

void relational_parquet(Connection &con) {
    con.Query("LOAD parquet");
    auto parquet_relation = con.TableFunction("parquet_scan", {"data.parquet"});

    auto query = parquet_relation->Project("name, city, age")
                                                ->Filter("age > 30")
                                                ->Order("age DESC")
                                                ->Limit(2);

    std::cout << "Parquet:" << std::endl;
    parquet_relation->Print();

    std::cout << "\nQuery Result:" << std::endl;
    query->Print();
}
```

