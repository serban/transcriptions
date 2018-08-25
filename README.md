# Transcriptions

```bash
lilypond joshua-redman-put-it-in-your-pocket.ly
open joshua-redman-put-it-in-your-pocket-*.pdf
```

```bash
export SCORE='saxophone-exercises.ly'
watchman-make --pattern '**/*.ly' --run ./make.sh
```

## TODO

* See [Automatic accidentals](http://lilypond.org/doc/v2.18/Documentation/notation/displaying-pitches#automatic-accidentals)
  for printing all accidentals in `saxophone-exercises.ly`.
