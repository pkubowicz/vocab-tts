## Training listening

Using SSML-compatible reader:

```
./ssml.sh to1000 | xclip
```

Using MacOS `say`:
```
./mac.sh to1000 Luca
```

Using Mary TTS:

```
./mary.sh to1000 it
```
(outputs `out.wav`, you can use it to replay)

Using own TTS:

```
node to1000.js | sed 's/<[^>]*>/ /g' | tee /dev/stderr | xclip
```

### Exercises

- `tel` – telephone number
- `tel-fast` – telephone number, spoken fast
- `tel-zh`– telephone number, in Mandarin
- `to1000` – numbers between 11 and 999
- `year` - years between 1880 and 2030
- `zh` – numbers between 11 and 91

### SSML

Readers:
- https://ttsmp3.com/text-to-speech/Chinese%20Mandarin/
- https://www.getwoord.com/ssml-editor (ctrl+shift+v)

Spec:
- https://docs.aws.amazon.com/polly/latest/dg/supportedtags.html
- https://www.w3.org/TR/speech-synthesis

## Using Anki deck

Anki: File > Export, Notes as plain text, just 1 deck, no tags, no HTML

Training listening:

```
cat ~/tmp/chinese.txt | ./chinese-input.sh | ./ssml.sh from-input | xclip
```

Training sentence building from random words:

```
cat ~/tmp/chinese.txt | ./build-sentence.sh
```

and from latest words:

```
cat ~/tmp/chinese.txt | ./newest-sentence.sh
```
