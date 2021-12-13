#!/bin/sh

# awk: my language in 2nd column, divided by tabs
# sed: make sure there is some text, and more than 1 letter
awk 'BEGIN { FS = "\t" } {print $2}' \
    | sed -e '/^$/ d' -e '/^.$/ d' \
	| shuf \
	| head -25 \
	| sort
