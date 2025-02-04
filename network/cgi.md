# Common Gateway Interface - CGI

[Back](../index.md#network){: .button}

CGI is an interface specification to run console applications on a server. Param like Query Param and Path are set an env variables for use in applications

### Starting up with busybox httpd

```sh
busybox httpd -p 8080 -h $HOME/public_html
```


```sh
busybox httpd -p 8081 -c /path/to/http.conf -h /path/to/www
```

## References

- [RFC 3875](https://tools.ietf.org/html/rfc3875)
- [Apache http](https://httpd.apache.org/docs/2.4/howto/cgi.html)
- [Metacpan on CGI](https://metacpan.org/pod/CGI)
