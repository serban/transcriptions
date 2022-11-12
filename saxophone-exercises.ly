\version "2.22.2"

\include "settings.ily"

\layout {
  ragged-right = ##t
}

\header {
  title = "Saxophone Exercises"
  composer = "Serban Giuroiu"
}

changes = \chordmode {
  \set chordChanges = ##t

  d2 g2 | c2 f2 |
  bf2 ef2 | af2 df2 |
  gf2 b2 | e2 a2 |

  d2 g2 | c2 f2 |
  bf2 ef2 | af2 df2 |
  gf2 b2 | e2 a2 |

  d2:7 g2:7 | c2:7 f2:7 |
  bf2:7 ef2:7 | af2:7 df2:7 |
  gf2:7 b2:7 | e2:7 a2:7 |

  d2:7 g2:7 | c2:7 f2:7 |
  bf2:7 ef2:7 | af2:7 df2:7 |
  gf2:7 b2:7 | e2:7 a2:7 |

  d2:m7 g2:m7 | c2:m7 f2:m7 |
  bf2:m7 ef2:m7 | af2:m7 df2:m7 |
  gf2:m7 b2:m7 | e2:m7 a2:m7 |

  d2:m7 g2:m7 | c2:m7 f2:m7 |
  bf2:m7 ef2:m7 | af2:m7 df2:m7 |
  gf2:m7 b2:m7 | e2:m7 a2:m7 |
}

melody = \relative c' {
  \numericTimeSignature
  \accidentalStyle forget

  \clef treble
  \key c \major
  \time 4/4

  \set Score.markFormatter = #format-mark-box-numbers

  \mark \default
  % D-G-C-F / Bb-Eb-Ab-Db / Gb-B-E-A
  \relative c' { d8 fs a d g, b d g | c, e g c f,, a c f | } \bar "||" \break
  \relative c' { bf'8 d f bf ef,, g bf ef | af, c ef af df, f af df | } \bar "||" \break
  \relative c' { gf'8 bf df gf b, ds fs b | e,, gs b e a, cs e a | } \bar "||" \break

  \mark \default
  % D-G-C-F / Bb-Eb-Ab-Db / Gb-B-E-A
  \relative c' { d'8 a fs d g' d b g | c' g e c f c a f | } \bar "||" \break
  \relative c' { bf''8 f d bf ef bf g ef | af' ef c af df' af f df | } \bar "||" \break
  \relative c' { gf''8 df bf gf b' fs ds b | e b gs e a' e cs a | } \bar "||" \break

  \pageBreak

  \mark \default
  % D7-G7-C7-F7 / Bb7-Eb7-Ab7-Db7 / Gb7-B7-E7-A7
  \relative c' { d8 fs a c g b d f | c e g bf f, a c ef | } \bar "||" \break
  \relative c' { bf'8 d f af ef, g bf df | af c ef gf df f af cf | } \bar "||" \break
  \relative c' { gf'8 bf df ff b, ds fs a | e, gs b d a cs e g | } \bar "||" \break

  \mark \default
  % D7-G7-C7-F7 / Bb7-Eb7-Ab7-Db7 / Gb7-B7-E7-A7
  \relative c' { c'8 a fs d f' d b g | bf' g e c ef c a f | } \bar "||" \break
  \relative c' { af''8 f d bf df bf g ef | gf' ef c af cf' af f df | } \bar "||" \break
  \relative c' { ff'8 df bf gf a' fs ds b | d b gs e g' e cs a | } \bar "||" \break

  \pageBreak

  \mark \default
  % Dm7-Gm7-Cm7-Fm7 / Bbm7-Ebm7-Abm7-Dbm7 / Gbm7-Bm7-Em7-Am7
  \relative c' { d8 f a c g bf d f | c ef g bf f, af c ef | } \bar "||" \break
  \relative c' { bf'8 df f af ef, gf bf df | af cf ef gf df ff af cf | } \bar "||" \break
  \relative c' { gf'8 bff df ff b, d fs a | e, g b d a c e g | } \bar "||" \break

  \mark \default
  % Dm7-Gm7-Cm7-Fm7 / Bbm7-Ebm7-Abm7-Dbm7 / Gbm7-Bm7-Em7-Am7
  \relative c' { c'8 a f d f' d bf g | bf' g ef c ef c af f | } \bar "||" \break
  \relative c' { af''8 f df bf df bf gf ef | gf' ef cf af cf' af ff df | } \bar "||" \break
  \relative c' { ff'8 df bff gf a' fs d b | d b g e g' e c a | } \bar "||" \break

  \pageBreak
}

\book {
  \score {
    <<
      \new ChordNames \changes
      \new Staff \melody
    >>
  }
}
