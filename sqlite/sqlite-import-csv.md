# sqlite import csv

[Back](../index.md#sqlite){: .button}

```
sqlite> create table stat (a, b, c);
sqlite> .mode csv
sqlite> .import content.csv stat
```
