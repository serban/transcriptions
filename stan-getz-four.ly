\include "settings.ly"

\header {
  title = "Four"
  subtitle = "Stan Getz - West Coast Jazz (1955)"
  composer = "Miles Davis"
}

changes = \chords {
  \set chordChanges = ##t

  ef1:maj7 |
  f2:m7 bf2:7 |

  ef1:maj7 |
  ef1:maj7 |
  ef1:m7 |
  af1:7 |

  f1:m7 |
  f1:m7 |
  af1:m7 |
  df1:7 |

  g1:m7 |
  fs1:m7 |
  f1:m7 |
  bf1:7 |

  g1:m7 |
  fs1:m7 |
  f1:m7 |
  bf:7 |
}

tenorSolo = \relative c'' {
  \numericTimeSignature

  \clef treble
% \key ef \major
  \time 4/4

% ------------------------------------------------------------------------------

  % ef1:maj7
  r8^"Tenor Solo (Stan Getz)"
    b8 \tuplet 3/2 { c8 ef8 f8 } \tuplet 3/2 { fs8 g8 fs8 } f8 e8 |
  \noBreak

  % f2:m7 bf2:7
  ef8 c8 af8 g8 gf8 d'8 a8 c8 \bar "||" |
  \break

% ------------------------------------------------------------------------------

  % ef1:maj7
  bf8 c8 d2. |
  \noBreak

  % ef1:maj7
  r8 c8 a8 c8 bf8 c8 df4~ |
  \noBreak

  % ef1:m7
  df2 r8 bf8 df8 f8 |
  \noBreak

  % af1:7
  gf8 df8 f8 ef8~ ef2 |
  \break

% ------------------------------------------------------------------------------

  % f1:m7
  r4 r4 fs8 g8 fs8 g8 |
  \noBreak

  % f1:m7
  ef8 c8 r8 g8 bf4 af8 g8~ |
  \noBreak

  % TODO(serban): Check the rhythms from here on out.

  % af1:m7
  g4. f8 e8 f8 bf8 af8 |
  \noBreak

  % df1:7
  r4 r4 r8 f8 g8 af8 |
  \break

% ------------------------------------------------------------------------------

  % g1:m7
  bf8 g'8 d8 f8 ef8 bf8 g8 gf8~ |
  \noBreak

  % fs1:m7
  gf2. r4 |
  \noBreak

  % f1:m7
  r8 e8 \tuplet 3/2 { f8 af8 c8 } d8 ef8 f8 g8 |
  \noBreak

  % bf1:7
  r4 r8 bf8 r8 c8 r8 d8 |
  \break

% ------------------------------------------------------------------------------

  % g1:m7
  r8 c8 r8 bf8 r8 g8 f8 ef8 |
  \noBreak

  % fs1:m7
  r8 ef'8~ ef4 df8 bf8 gf8 af8 |
  \noBreak

  % f1:m7
  bf8 bf8~ bf2. |
  \noBreak

  % bf:7
  r1 |
  \break
}

chart = {
  <<
    \changes
    \tenorSolo
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
  \transpose ef c \chart
}

\book {
  #(define output-suffix "tenor")
  \header {
    instrument = \markup { "B" \small \raise #1 \flat "Tenor Sax" }
  }
  \transpose bf, c \chart
}
