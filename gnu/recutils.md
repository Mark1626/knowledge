# Recutils

[Back](../index.md#gnu){: .button}

recutils are a set of utilities for making human readable database files

```
# Delete record with a particular tag

recdel -t Bookmarks -e "Tags = 'book'" bookmarks.rec

# Query based on a tag into a new recutils file

recsel -e "Tags = 'book'" bookmarks.rec >> books.rec

# Get info about a particular type of record

recinf -t Bookmarks bookmarks/bookmarks.rec

```

