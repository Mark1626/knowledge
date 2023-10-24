# Increasing number of threads of libuv

[Back](./javascript.md)

`nodejs` utilizes `libuv` internally for the event loop. By default it uses a 4 threads, this can be increased by setting the env `UV_THREADPOOL_SIZE`

```js
const OS = require('os')
process.env.UV_THREADPOOL_SIZE = OS.cpus().length
```
