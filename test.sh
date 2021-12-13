#!/usr/bin/env zsh

for i (*.js); do
    OUT=$(echo foo | node $i)
    if [[ $? -ne 0 ]]; then
        echo $OUT
        exit 1
    fi
done

echo "1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n" | ./chinese-input.sh > /dev/null

echo ok
