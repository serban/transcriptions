\include "settings.ly"

\header {
  title = "Bop For Bebo"
  composer = "Ariel Fogel"
}

changes = \chords {
  \set chordChanges = ##t

  \repeat volta 2 {
    f1:maj7 |
    ef1:7 |
    f1:maj7 |
    ef2:m7 af2:7 |

    f1:maj7 |
    ef1:m7 |
  }
  \alternative {
    {
      f2:6 ef2:m7/gf |
      f1:6 |
    }
    {
      f2:6 ef2:m7/gf |
      f1:6 |
    }
  }

  ef1:m7 |
  af1:7 |
  df1:m7 |
  gf1:7 |

  b1:maj7 |
  d1:maj7 |
  g1:maj7 |
  df2:maj6 c2:7 |

  % The last eight bars are a repeat of the A section.
  f1:maj7 |
  ef1:7 |
  f1:maj7 |
  ef2:m7 af2:7 |

  f1:maj7 |
  ef1:m7 |
  f2:6 ef2:m7/gf |
  f1:6 |
}

melody = \relative c' {
  \numericTimeSignature

  \clef treble
  \key f \major
  \time 4/4
  \tempo 4 = 160

  \repeat volta 2 {
    r8 c8 f8 a8 g8 f8 e8 f8 |
    g8 f8 a8 df,8~ df8 g8~ g8 bf8 |
    a4. bf8 c8 a8 bf8 c8 |
    \tuplet 3/2 { df8 bf8 gf8 } ef8 c'8~ c4 bf8 a8~ |
    \break

    a8 bf8 c8 a8 bf8 c4 gf8~ |
    gf8 af8 bf8 gf8 af8 gf4 f8~ |
  }
  \alternative {
    {
      f2 gf2 |
      f8 r8 r4 r4 r4 |
    }
    {
      f2 ef2 |
      f8 r8 r4 r4 r4 \bar "||" |
      \break
    }
  }

  ef4. f8 gf8 bf8~ bf8 af8~ |
  af8 gf8~ gf8 f8~ f8 ef4. |
  df4. ef8 ff8 af8~ af8 gf8~ |
  gf8 ff8~ ff8 ef8~ ef8 df4. |
  \break

  b4. cs8 ds8 b8 r8 d8 |
  r8 d4 e8 fs8 d8 r4 |
  g4. a8 b8 g8 r8 df'8~ |
  df8 af8 g8 c,8~ c4 r4 |
  \break

  % The last eight bars are a repeat of the A section.
  r8 c8 f8 a8 g8 f8 e8 f8 |
  g8 f8 a8 df,8~ df8 g8~ g8 bf8 |
  a4. bf8 c8 a8 bf8 c8 |
  \tuplet 3/2 { df8 bf8 gf8 } ef8 c'8~ c4 bf8 a8~ |
  \break

  a8 bf8 c8 a8 bf8 c4 gf8~ |
  gf8 af8 bf8 gf8 af8 gf4 f8~ |
  f2 gf2 |
  f8 r8 r4 r4 r4 \bar "|." |
  \break
}

chart = {
  <<
    \changes
    \melody
  >>
}

% ------------------------------------------------------------------------------

\book {
  #(define output-suffix "concert")
  \chart
}

\book {
  #(define output-suffix "alto")
  \header {
    instrument = \markup { "E" \small \raise #1 \flat "Alto Sax" }
  }
  \transpose ef c' \chart
}

\book {
  #(define output-suffix "tenor")
  \header {
    instrument = \markup { "B" \small \raise #1 \flat "Tenor Sax" }
  }
  \transpose bf, c \chart
}
