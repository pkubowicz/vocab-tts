#!/bin/sh

# inspiration: https://github.com/marytts/marytts-txt2wav/blob/sh/txt2wav.sh

JS=$1
LANG=$2

XML=$(echo -n '<?xml version="1.0"?><speak version="1.1" xmlns="http://www.w3.org/2001/10/synthesis" xml:lang="' ; echo -n $LANG ; echo -n '">' ; (./ssml.sh $JS | sed -e 's/\(3, 2, 1.\)/\1<break time="2s"\/>/' -e 's/\.\([< ]\|$\)/,\1/g') ; echo -n '</speak>')
# echo $XML
# exit 1

echo "$XML" | curl http://localhost:59125/process --silent --max-time 5 --data "INPUT_TYPE=SSML&OUTPUT_TYPE=AUDIO&AUDIO=WAVE_FILE&LOCALE=$LANG" --data-urlencode "INPUT_TEXT@-" > out.wav
mpv out.wav > /dev/null
