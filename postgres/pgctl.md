# PG CTL

[Back](../index.md){: .button}

`pg_ctl` is a utility to start, stop postgres

- Starting a postgres instance `pg_ctl start`
- Restarting a postgres instance `pg_ctl restart`

#### Database storage area

The flag `-D` or `--pgdata` can be used to change the location of data storage

#### Shutdown Mode

Modes can be specified when doing `stop` or `restart`


- Immediate kills it without proper shutdown  `pg_ctl stop --mode=immediate`
- Fast does a proper shutdown but does not wait for all clients to disconnect `pg_ctl restart --mode=fast`
- Smart quits after all clients disconnect

