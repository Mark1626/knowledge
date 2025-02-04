# Standard Sub Resource Integrity - SSRI

[Back](../index.md#web){: .button}

Subresource integrity is used to ensure that the content received by the user is the one that the author intended

```html
<link rel="stylesheet" href="https://site53.example.net/style.css"
      integrity="sha384-+/M6kredJcxdsqkczBUjMLvqyHb1K/JThDXWsBVxMEeZHEaMKEOEct339VItX1zB"
      crossorigin="anonymous">

<script src="https://analytics-r-us.example.com/v1.0/include.js"
        integrity="sha384-MBO5IDfYaE6c6Aao94oZrIOiC6CGiSN2n4QUbHNPhzk5Xhm0djZLQqTpL0HzTUxk"
        crossorigin="anonymous"></script>
```

## Reference

- [W3C SSRI](https://w3c.github.io/webappsec-subresource-integrity)

