#!/usr/bin/env zsh

show_help () {
    echo "Usage: ./ssml.sh [ tel | tel-fast | tel-zh | to1000 | year | zh ] [ voice ]" >&2
    exit 0
}

[[ -z "$1" ]] && show_help
[[ "$1" == "--help" ]] && show_help

WORKDIR=$(dirname $0)
JS="$WORKDIR/$1"
[[ ! $JS =~ "\.js$" ]] && JS="$JS.js"
[[ ! -f $JS ]] && show_help

VOICE=$2

SPEECH=$(node $JS | sed 's/<[^>]*>/ /g')
echo $SPEECH > /dev/stderr
echo $SPEECH | say -v $VOICE -f -
