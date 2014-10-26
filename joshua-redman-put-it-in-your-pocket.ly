% vim:set ts=8 sw=2 sts=2 et:

\include "settings.ly"

\header {
  title = "Put It In Your Pocket"
  subtitle = "Joshua Redman Elastic Band - Momentum"
  composer = "Joshua Redman"
  meter = "Funk"
}

melody = \relative c' {
  \numericTimeSignature

  \clef treble
  \key e \major
  \time 4/4

  \override Score.MetronomeMark #'padding = #3
  \tempo 4 = 80

  \set Score.skipBars = ##t
  \override MultiMeasureRest #'expand-limit = 1
  R1*8

  % 00:26
  r2. r16 b'16^\markup { 00:26 } r16 ds16 |
  %\partial 4 r16 b'16^\markup { 00:26 } r16 ds16 |
  r2 r16 gs, b r16 ds8 cs16 cs16~ |
  cs16 b r8 r4 r16 gs16 b r16 cs16 ds cs cs16~ |
  cs16 b r8 r4 r16 gs16 b r16 cs16 b gs r16 |
  b16 r16 r8 r16 ds,16 g-- gs-. r4 r16 b16^\markup { 00:38 } r16 ds16 |

  % 00:38
  r2 r16 gs,16 b r16 ds8 cs16 cs16~ |
  cs16 b r8 r4 r16 gs16 b r16 ds16 fs d cs16~ |
  cs16 b r8 r4 r16 gs16 b gs cs b gs r16 |
  b16 r16 r8 r16 ds,16 g-- gs-. r16 d16^\markup { 00:49 } ds fs gs c r16 ds16 |

  % 00:49
  r2 r16 gs,16 b r16 e8 ds16 ds16~ |
  ds16 cs r8 r4 r16 gs16 b r16 a'16 g e ds16~ |
  ds16 cs r8 r4 r16 g16 gs b ds fs cs r16 |
  ds4-^ gs, cs g'16 cs, r16 ds16 |

  % 01:04
  r2 r16 gs,16^\markup { 01:04 } b r16 ds8 cs16 cs16~ |
  cs16 b r8 r4 r16 gs16 b r16 gs'32 fs ds b cs16 cs16~ |
  cs16 b r8 r4 r16 ds,16 fs gs b c r8 |
  cs16 b fs d' cs c fs, gs r16 cs b fs ds' e r16 f16 |

  % 01:16
  r2 r16 b,16^\markup { 01:16 } cs ds gs r16 f16 ds16~ |
  ds16 f r8 r4 r16 ds16 cs b gs' fs r16 g16 |
  r16 g,16 r8 g16 fs f as gs as c ds f gs8.-- |
  a4-^ f as fs16 b r16 cs16 |
  r2 r16 cs16^\markup { 01:29 } b gs ds8 cs16 cs16~ |

  % 01:29
  cs16 b r8 r4 r16 gs16 b gs \tuplet 3/2 { ds'16 e fs } cs16 cs16~ |
  cs16 b r8 r4 r16 gs16 b gs cs b gs r16 |
  b16 r16 r8 r16 ds,16 g-- gs-. r2 |
  r16 b16 r16 ds16 r2. |

  \bar "|."
}

\book {
  #(define output-suffix "concert")
  \transpose c ef \melody
}

\book {
  #(define output-suffix "alto")
  \header {
    instrument = \markup { "E" \small \raise #1 \flat "Alto Sax" }
  }
  \melody
}

\book {
  #(define output-suffix "tenor")
  \header {
    instrument = \markup { "B" \small \raise #1 \flat "Tenor Sax" }
  }
  \transpose bf, ef \melody
}
