# Ghost Script

[Back](../index.md#unix){: .button}

Removing password from password protected PDF file

```
gs -dNOPAUSE -dBATCH -q -sDEVICE=pdfwrite -sPDFPassword=password -sOutputFile=output2.pdf -f input.pdf
```
