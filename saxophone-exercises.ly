\include "settings.ly"

\header {
  title = "Saxophone Exercises"
  composer = "Serban Giuroiu"
}

changes = \chords {
  \set chordChanges = ##t

  d2 g2 | c2 f2 |
  d2 g2 | c2 f2 |

  bf2 ef2 | af2 df2 |
  bf2 ef2 | af2 df2 |

  gf2 b2 | e2 a2 |
  gf2 b2 | e2 a2 |

% d2:7 g2:7 | c2:7 f2:7 |
% d2:7 g2:7 | c2:7 f2:7 |

% bf2:7 ef2:7 | af2:7 df2:7 |
% bf2:7 ef2:7 | af2:7 df2:7 |

% gf2:7 b2:7 | e2:7 a2:7 |
% gf2:7 b2:7 | e2:7 a2:7 |

% d2:m7 g2:m7 | c2:m7 f2:m7 |
% d2:m7 g2:m7 | c2:m7 f2:m7 |

% bf2:m7 ef2:m7 | af2:m7 df2:m7 |
% bf2:m7 ef2:m7 | af2:m7 df2:m7 |

% gf2:m7 b2:m7 | e2:m7 a2:m7 |
% gf2:m7 b2:m7 | e2:m7 a2:m7 |
}

melody = \relative c' {
  \numericTimeSignature

  \clef treble
  \key c \major
  \time 4/4

  % D-G-C-F
  d8 fs a d g, b d g | c,, e g c f, a c f \bar "||" \noBreak
  d8 a fs d g' d b g | c g e c f' c a f \bar "||" \break

  % Bb-Eb-Ab-Db
  bf,8 d f bf ef, g bf ef | af, c ef af df,, f af df \bar "||" \noBreak
  bf f d bf ef' bf g ef | af' ef c af df af f df \bar "||" \break

  % Gb-B-E-A
  gf8 bf df gf b,, ds fs b | e, gs b e a, cs e a \bar "||" \noBreak
  gf8 df bf gf b fs ds b | e' b gs e a' e cs a \bar "||" \break
}

chart = {
  <<
    \changes
    \melody
  >>
}

\book {
  \chart
}
