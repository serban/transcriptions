% vim:set ts=8 sw=2 sts=2 et:

\version "2.17.95"

\language "english"

#(set-default-paper-size "letter")

\paper {
  indent = 0
  tagline = #(strftime "Engraved on %b %e, %Y %H:%M" (localtime (current-time)))
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
