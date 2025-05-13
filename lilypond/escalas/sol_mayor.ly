\version "2.24.4"

\header {
  title = "Sol Mayor"
}

\paper {
  #(set-paper-size "a4")
  indent = 0
  left-margin = 10\mm
  right-margin = 10\mm
  ragged-right = ##f
}

global = {
  \key g \major
  \numericTimeSignature  
}

mus = { \bar "|." }

\score {
  \new Staff {
    \relative c' {
      \global
      \sectionLabel Escala 
      \time 4/4
      \tempo "Adagio" 4 = 52
      g a b c d e fis g a b c d e fis g fis e-4 d c b a-4 g fis e d-4 c b a g r r2
      \mus
    }
  }
}

\score {
  \new Staff {
    \relative c' {
      \global
      \time 2/4
      g8 (a) b (c) d (e) fis (g) a (b) c (d) e (fis) g (fis) e-4 (d) c (b) a-4 (g) fis (e) d-4 (c) b (a) g4 r4
      \mus
    }
  }
}

\score {
  \new Staff {
    \relative c' {
      \global
      \time 2/4
      \tuplet 3/2 { g8 [(a b)] }
      \tuplet 3/2 { c [(d e)] }
      \tuplet 3/2 { fis [(g a)] }
      \tuplet 3/2 { b [(c d)] }
      \tuplet 3/2 { e [(fis g)] }
      \tuplet 3/2 { fis [(e-4 d)] }
      \tuplet 3/2 { c [(b a-4)] }
      \tuplet 3/2 { g [(fis e)] }
      \tuplet 3/2 { d-4 [(c b)] }
      \tuplet 3/2 { a [(g g)] }
      \mus
    }
  }
}

\score {
  \new Staff {
  \sectionLabel Arpegio
    \relative c' {
      \global
      \time 2/4
      \tempo "Adagio" 4 = 52
      g8 b d
      g b d
      g d b
      g d b
      g r8 r4
      \mus
    }
  }
}