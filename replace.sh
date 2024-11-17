#!/usr/bin/env bash

cp $1 $1.out
grep -v "^#" replacements | xargs -I % sed -i -r '%' $1.out