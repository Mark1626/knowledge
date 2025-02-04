# perf within container

[Back](../index.md#containers){: .button}

By default Docker uses `seccomp` to prevent some calls being run inside a container.

`perf` requires `perf_event_open` to be made to collect profiling information.

```sh
docker run --rm -it --security-opt=seccomp.perf.json
```

```json
//seccomp.perf.json
{
  "defaultAction": ...,
  "archMap": [...],
  "syscalls": [
  ...,
  "perf_event_open",
  ....
  ],
  ...
}
```

## Reference

- [Profiling within a container](https://gendignoux.com/blog/2019/11/09/profiling-rust-docker-perf.html#custom-seccomp-bpf-profile-for-perf)
- [seccomp reference in Docker](https://docs.docker.com/engine/security/seccomp/)
