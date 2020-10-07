# cURL Output format

[Back](../index.md){: .button}

The output format of cURL can be specified with `-w`

Specify the format in a file `format.txt`

```txt
time_namelookup: %{time_namelookup}
time_connect: %{time_connect}
time_appconnect: %{time_appconnect}
time_pretransfer: %{time_pretransfer}
time_redirect: %{time_redirect}
time_starttransfer: %{time_starttransfer}
———
time_total: %{time_total}
```

Now we can specify to use this file to write out output

```sh
curl -w "@format.txt" http://localhost:8080/resource
```


### Reference

- https://blog.josephscott.org/2011/10/14/timing-details-with-curl/
- https://curl.haxx.se/docs/manpage.html

