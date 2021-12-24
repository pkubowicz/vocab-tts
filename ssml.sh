#!/usr/bin/env zsh

show_help () {
    echo "Usage: ./ssml.sh [ tel | tel-fast | tel-zh | to1000 | year | zh ]" >&2
    exit 0
}

[[ -z "$1" ]] && show_help
[[ "$1" == "--help" ]] && show_help

WORKDIR=$(dirname $0)
JS="$WORKDIR/$1"
[[ ! $JS =~ "\.js$" ]] && JS="$JS.js"
[[ ! -f $JS ]] && show_help

SPEECH=$(node $JS)
echo $SPEECH | sed 's/<[^>]*>/ /g' > /dev/stderr
echo -n $SPEECH
