# Print the HTML page with Lynx

[Back](../index.md){: .button}

Lynx can be used to extract the content out of a web page. This is useful in remove the scripts and html tags when you want to save a page

Dump the page to stdout

```sh
lynx http://example.com -crawl -dump
```

