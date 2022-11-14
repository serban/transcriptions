\version "2.22.2"

\include "settings.ily"

\header {
  title = "Song For My Father"
  composer = "Horace Silver"
}

changes = \chordmode {
  \set Staff.midiInstrument = "electric piano 1"
  \set Staff.midiMaximumVolume = #0.2

  \tempo 4 = 130

  \set chordChanges = ##t

  % 01:40
  f1:m7 |
  f1:m7 |
  ef1:7 |
  ef1:7 |
  \break

  % 01:47
  df1:7 |
  c1:7sus4 |
  f1:m7 |
  f1:m7 |
  \bar "||"
  \break

  % 01:55
  % See “Known issues and warnings” in “Special rhythmic concerns”
  % ↳ https://lilypond.org/doc/v2.22/Documentation/notation/special-rhythmic-concerns
  % › Grace note synchronization can also lead to surprises. Staff notation,
  % › such as key signatures, bar lines, etc., are also synchronized. Take care
  % › when you mix staves with grace notes and staves without. …
  % › This can be remedied by inserting grace skips of the corresponding
  % › durations in the other staves.
  \grace s16 f1:m7 |
  f1:m7 |
  ef1:7 |
  ef1:7 |
  \break

  % 02:02
  df1:7 |
  c1:7sus4 |
  f1:m7 |
  f1:m7 |
  \bar "||"
  \break
}

upper = \relative c' {
  \set Staff.midiInstrument = "acoustic grand"

  \numericTimeSignature

  \clef treble
  \key f \minor
  \time 4/4

  % 01:40
  r1 |
  r4 r4 r8 c'8 ef8 f8 |
  df8 bf8~ bf4 r4 r4 |
  r4 r4 r4 cf8 df8 |

  % 01:47
  af8 f8~ f4 r4 r4 |
  r8 f8 <af c>8 <bf d>8 <c ef>8 f,8 <bf d>8 f8 |
  <af c>2 r4 r4 |
  r4 r4 r8 f'8 af8 bf8 |

  % 01:55
  \acciaccatura b16 c4 \acciaccatura b16 c4 \acciaccatura b16 c4 \acciaccatura b16 c4 |
  \acciaccatura b16 c4 \acciaccatura b16 c8 b8 c4 ef4 |
  r8 ef,8 g8 bf8 df4 df8 ef8 |
  c4 bf8 af8 \acciaccatura gf16 g4 ef4 |

  % 02:02
  r8 ef16 df16 b8 df8 bf8 b8 af4 |
  r8 f8 <af c>8 <bf d>8 <c ef>8 f,8 <bf d>8 f8 |
  <af c>2 r4 r4 |
  r1 |
}

lower = \relative c' {
  \set Staff.midiInstrument = "acoustic grand"

  \numericTimeSignature

  \clef bass
  \key f \minor
  \time 4/4

  \ottava #1

  % 01:40
  r4^\markup { 01:40 } r8 <af ef' g>8 q4 r8 q8 |
  q4 r8 q8~ q4 r4 |
  r4 r8 <g df' f>8 q4 r8 q8 |
  q4 r8 q8~ q4 r4 |

  % 01:47
  r4^\markup { 01:47 } r8 <f cf' ef>8 q4 q4 |
  <f bf d>4 r4 r4 r4 |
  r4 r8 <af ef' g>8 q4 r8 q8 |
  q4 r8 q8~ q4 r4 |

  % 01:55
  r1^\markup { 01:55 } |
  <af ef' g>1 |
  <g df' f>1 |
  <g df' f>1 |

  % 02:02
  <f cf' ef>1^\markup { 02:02 } |
  <f bf d>4 r4 r4 r4 |
  r4 r8 <af ef' g>8 q4 r8 q8 |
  q4 r8 q8~ q4 r4 |
}

\book {
  \score {
    <<
      \new ChordNames \changes
      \new PianoStaff <<
        \new Staff \upper
        \new Staff \lower
      >>
    >>
    \layout {}
    \midi {}
  }
}
