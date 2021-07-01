# Postgresql Trust Authentication

[Back](../index.md#postgresql){: .button}

`trust` authentication assumes that anyone who can connect to the server can be autherised to access the database.

This is the reason why `psql` wouldn't need a password when connecting to a local instance.
This is also the reason why a docker container will need a password when you try to connect, also doing an exec inside a container 
will allow you to connect without a password

