% vim:set ts=8 sw=2 sts=2 et:

\version "2.8.0"

#(set-default-paper-size "letter")

\header
{
  title = "Put It In Your Pocket"
  subtitle = "Joshua Redman Elastic Band - Momentum"
  composer = "Joshua Redman"
  instrument = \markup { "E" \small \raise #1 \flat " Alto Sax" }
  meter = "Funk"
}

\relative
{
  \clef treble
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  \key e \major

  \override Score.MetronomeMark #'padding = #3
  \tempo 4 = 80

  \set Score.skipBars = ##t
  \override MultiMeasureRest #'expand-limit = 1
  R1*8

  % 00:26
  r2. r16 b'16^\markup { 00:26 } r16 dis16 |
  %\partial 4 r16 b'16^\markup { 00:26 } r16 dis16 |
  r2 r16 gis, b r16 dis8 cis16 cis16~ |
  cis16 b r8 r4 r16 gis16 b r16 cis16 dis cis cis16~ |
  cis16 b r8 r4 r16 gis16 b r16 cis16 b gis r16 |
  b16 r16 r8 r16 dis,16 g-- gis-. r4 r16 b16^\markup { 00:38 } r16 dis16 |

  % 00:38
  r2 r16 gis,16 b r16 dis8 cis16 cis16~ |
  cis16 b r8 r4 r16 gis16 b r16 dis16 fis d cis16~ |
  cis16 b r8 r4 r16 gis16 b gis cis b gis r16 |
  b16 r16 r8 r16 dis,16 g-- gis-. r16 d16^\markup { 00:49 } dis fis gis c r16 dis16 |

  % 00:49
  r2 r16 gis,16 b r16 e8 dis16 dis16~ |
  dis16 cis r8 r4 r16 gis16 b r16 a'16 g e dis16~ |
  dis16 cis r8 r4 r16 g16 gis b dis fis cis r16 |
  dis4-^ gis, cis g'16 cis, r16 dis16 |

  % 01:04
  r2 r16 gis,16^\markup { 01:04} b r16 dis8 cis16 cis16~ |
  cis16 b r8 r4 r16 gis16 b r16 gis'32 fis dis b cis16 cis16~ |
  cis16 b r8 r4 r16 dis,16 fis gis b c r8 |
  cis16 b fis d' cis c fis, gis r16 cis b fis dis' e r16 f16 |

  % 01:16
  r2 r16 b,16^\markup { 01:16 } cis dis gis r16 f16 dis16~ |
  dis16 f r8 r4 r16 dis16 cis b gis' fis r16 g16 |
  r16 g,16 r8 g16 fis f ais gis ais c dis f gis8.-- |
  a4-^ f ais fis16 b r16 cis16 |
  r2 r16 cis16^\markup { 01:29 } b gis dis8 cis16 cis16~ |

  % 01:29
  cis16 b r8 r4 r16 gis16 b gis \times 2/3 { dis'16 e fis } cis16 cis16~ |
  cis16 b r8 r4 r16 gis16 b gis cis b gis r16 |
  b16 r16 r8 r16 dis,16 g-- gis-. r2 |
  r16 b16 r16 dis16 r2. |

  \bar "|."
}
