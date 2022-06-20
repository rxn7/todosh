#!/usr/bin/env bash

for i in "$@"; do
	grep "$i" --color=always --exclude=`basename $0` --exclude-dir='.*' -rnwi -e "TODO:\|FIXME:" | sed -e 's/	\+/ /g' -e 's/  \+/ /g'
done
