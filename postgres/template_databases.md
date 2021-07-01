# Template Databases

[Back](../index.md#postgresql){: .button}

In postgresql when creating a database, a template can be specified to copy all the tables from the template into the new database

`CREATE DATABASE dbname TEMPLATE template0`

By default when `createdb` is done postgresql copies database `template1` to create a new database

`template0` is present as a backup to restore `template1` if it is destroyed. Hence `template0` should never be used.

