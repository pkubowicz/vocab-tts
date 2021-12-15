#!/usr/bin/env zsh

set -e
for i (*.js); do
    OUT=$(echo foo | node $i)
    if [[ $? -ne 0 ]]; then
        echo $OUT
        exit 1
    fi
done

echo "1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n" | ./chinese-input.sh > /dev/null 2>&1
./ssml.sh tel > /dev/null 2>&1
./ssml.sh tel.js > /dev/null 2>&1

echo ok
