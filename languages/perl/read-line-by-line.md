# Read line by line

[Back](./perl.md){: .button}

```pl
while(<>) {
  # print line number and line
  print $., $_;
}
```

This works for `cat <file> | <script.pl>`, `<script.pl> <file>` and `<script.pl>` enter text via stdin 
