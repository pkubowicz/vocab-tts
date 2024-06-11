#!/bin/sh

LIMIT=${1:-25}
TYPE="Zh"

# awk: my language in 3nd column, divided by tabs
# sed: make sure there is some text, and more than 1 letter
# tail: take twice as many newest ones to have something to randomize
awk 'BEGIN { FS = "\t" } /^'"$TYPE"'/{print $3}' \
	| sed -e '/^$/ d' -e '/^.$/ d' \
	| tail -n $((LIMIT * 2)) \
	| shuf \
	| head -n $LIMIT \
	| sort
