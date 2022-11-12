\version "2.22.2"

\book {
  #(define output-suffix "concert")
  \score {
    \chart
  }
}

\book {
  #(define output-suffix "alto")
  \header {
    instrument = \markup { "E" \small \raise #1 \flat "Alto Sax" }
  }
  \score {
    \transpose ef c' \chart
  }
}

\book {
  #(define output-suffix "tenor")
  \header {
    instrument = \markup { "B" \small \raise #1 \flat "Tenor Sax" }
  }
  \score {
    \transpose bf, c \chart
  }
}
