# CMake Fetch

[Back](../../index.md#build-tools){: .button}

## Fetching Git Repo

```cmake
include(FetchContent)

FetchContent_Declare(<content-name>
        GIT_REPOSITORY <content-git-repo>
        GIT_TAG <content-git-tag>)

FetchContent_MakeAvailable(<content-name>)
```

## Fetching zip or tar.gz

```
FetchContent_Declare(log4cxx
  URL <url>
  URL_HASH <hash>)

FetchContent_MakeAvailable(log4cxx)

```
