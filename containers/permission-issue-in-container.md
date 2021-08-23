# Preventing permission issue in Docker created files

[Back](../index.md#containers){: .button}

```Dockerfile
# Dockerfile
ARG USER_ID
ARG GROUP_ID

RUN addgroup --gid $GROUP_ID user
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user
USER user
```

when building

```sh
docker build -t image:tag . --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g)
```
