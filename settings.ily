\version "2.22.2"

\language "english"

\pointAndClickOff

\paper {
  #(set-paper-size "letter")
  indent = 0
  oddFooterMarkup = \markup {
    \fill-line {
      #(strftime "%Y-%m-%d %H:%M" (localtime (current-time)))
    }
  }
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
