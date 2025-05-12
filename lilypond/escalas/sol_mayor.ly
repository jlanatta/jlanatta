\version "2.24.4"

\header {
  title = "Sol Mayor"
}

\paper {
  #(set-paper-size "a4")
  % Add space for instrument names
  %indent = 0\mm
  indent = 0
  left-margin = 10\mm
  right-margin = 10\mm
  ragged-right = ##f
}
\layout {
  \context {
    \Score
  }
}

global = {
  \key g \major
  \numericTimeSignature  
}

violina = \relative c' {
  \global
    \time 4/4
    g a b c d e fis g a b c d e fis g fis e-4 d c b a-4 g fis e d-4 c b a g r r2
} 

violinb = \relative c' {
  \global
    \time 3/4
    g8 (a) b (c) d (e) fis (g) a (b) c (d) e (fis) g (fis) e-4 (d) c (b) a-4 (g) fis (e) d-4 (c) b (a) g4
}

violinc = \relative c' {
  \global
      \time 3/4
    g8 [(a b)]
    c [(d e)]
    fis [(g a)]
    b [(c d)]
    e [(fis g)]
    fis [(e-4 d)]
    c [(b a-4)]
    g [(fis e)]
    d-4 [(c b)]
    a (g4)
}

arpegio = \relative c'{
  \global
  \time 3/4
  \sectionLabel Arpegio
  g4 b d g b d g d b g d b g r2
 }

\score {
  \new Staff
  \violina
}

\score {
  \new Staff
  \violinb
}

\score {
  \new Staff
  \violinc
}

\score {
  \new Staff
  \arpegio
}
