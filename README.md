# Transcriptions

## Setup

```fish
brew install make lilypond timidity watchexec
```

## Build

```fish
gmake
```

## Iterate

```fish
watchexec --clear --exts ly,ily gmake
```

## TODO

* See [Automatic accidentals](http://lilypond.org/doc/v2.18/Documentation/notation/displaying-pitches#automatic-accidentals)
  for printing all accidentals in `saxophone-exercises.ly`.
