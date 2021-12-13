#!/bin/sh

# awk: Chinese in the first column
# sed: no Latin words; single character is too often too hard to pronounce
awk 'BEGIN { FS = "\t" } {print $1}' \
    | sed -e '/[a-zA-Z]/ d' -e '/^.$/ d' \
    | shuf \
    | head -10
