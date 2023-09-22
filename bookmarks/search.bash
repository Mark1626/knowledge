#!/usr/bin/env bash

# @author   : Nimalan (@mark1626)
# @desc     : Searches recutil record
# Inspired by https://gist.github.com/Gavinok/c3510aea2386e755bcc17d4d36fa5dec
# TODO: Fails badly as some of my description contain ' or "

fmt="box \"\fB{{Description}}\fP\" \"{{Url}}\" wid 3 ht 3"

REC=blog.rec

# TODO: Description based search
FIELD=$(printf 'Tags\n' | fzf)
SELECT_TAG=$(recsel -C $REC -P $FIELD | sort | uniq | fzf --preview "recsel -e '$FIELD = \"{}\"' $REC")

format() {
  echo .PS
  recsel -e "$FIELD = \"$SELECT_TAG\"" "$REC" | recfmt "$fmt"
  # $1 | recfmt "$fmt"
  printf '\n.PE'
}

# recsel -e "$FIELD = \"$SELECT_TAG\"" "$REC" | xargs -0 -I format

format | pic -Tascii | groff -ms -Tascii | sed -e '/^$/d'
