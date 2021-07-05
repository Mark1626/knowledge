# CMake Fetch

[Back](../../index.md#cmake){: .button}

```cmake
include(FetchContent)

FetchContent_Declare(<content-name>
        GIT_REPOSITORY <content-git-repo>
        GIT_TAG <content-git-tag>)

FetchContent_MakeAvailable(<content-name>)
```
