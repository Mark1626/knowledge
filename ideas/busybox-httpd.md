---
author: Nimalan aka mark1626
title: Lightweight, out of the box server setup with Busybox httpd
abstract: The busybox httpd
---

# Introduction

**busybox** is a lightweight executable that contains tiny versions of common UNIX utilities. Compared to their counter parts the busybox versions have fewer arguments making busybox easy to work with. **busybox** also comes with a **httpd** utility to listen to incoming HTTP requests, this can be used as a lightweight server out of the box without having to install a lot of dependencies for alternatives.

# Previous Work

I have used busybox's httpd as a CGI server[^1] as a part of a challenge to create a lightweight server. In the follow up article which I wrote (Nimalan, 2020), I mentioned that this could be used as a reverse proxy.

[^1]: https://github.com/Mark1626/Paraphernalia/tree/master/http-cgi

# Idea

A small problem though is that the amount of documentation specific to busybox httpd is limited, which means we have to rely on the source code.

**FEATURE_HTTPD_PROXY**[^2] needs to be enabled for reverse proxy, we build busybox with httpd reverse proxy enabled by setting this option with `make menuconfig`

With the newly compiled `busybox` we can specify reverse proxy config in `http`

```cfg
# httpd.conf
P:/url:[http://]hostname[:port]/new/path
```

[^2]: https://git.busybox.net/busybox/tree/networking/httpd.c?id=97c00ae13439ad8114ad7d2150c8dde464f04eb1#n204


# References

- BusyBox httpd. `https://www.busybox.net/downloads/BusyBox.html#httpd`. [Online; accessed 4-Jan-2021]
- BusyBox httpd source. `https://git.busybox.net/busybox/tree/networking/httpd.c?id=97c00ae13439ad8114ad7d2150c8dde464f04eb1`. [Online; accessed 4-Jan-2021]
- Apache httpd. `https://httpd.apache.org/docs/2.4/programs/httpd.html`. [Online; accessed 4-Jan-2021] 
- Nimalan, 2020. A Bare Minimal Http Server. `https://mark1626.github.io/posts/2021/01/11/bare-minimal-http-server/`. [Online; accessed 11-Jan-2021]
