#!/usr/bin/env bash

file="$1"
if [[ $# -eq 2 ]] ; then
  cp $1 $2
  file="$2"
fi

grep -v "^#" "`dirname $0`"/replacements \
  | sed 's/\\/\\\\/g' \
  | xargs -I % sed -i -r '%' $file