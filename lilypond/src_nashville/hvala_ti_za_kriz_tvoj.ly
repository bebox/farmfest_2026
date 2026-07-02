\version "2.24.4"
\include "deutsch.ly"
jazzChords = { \semiGermanChords }
aFourL = {}
\include "include.ily"
%markMoj = #(define-music-function (letter) (string?) #{ \mark \markup { \box \bold #letter } #})
%\pointAndClickOff

\layout {
  indent = 0
}

\header {
  title = "HVALA TI ZA KRIŽ TVOJ"
  composer = "Darlene Zschech"
  titlex = "(Worthy Is The Lamb)"
  style = ""
  broj = "3"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #8
}

staffOne = \relative c' {
  \key g \major
  \time 4/4
  %\tempo 4 = 77
  r2 h8 d8 g8 fis8 \bar "||" |
  \markMoj
  fis1 |
  d2 h8 d8 g8 fis8 |
  fis1 |
  d2 h8 c8 d8 g,8 \bar "||" |
  \markMoj
  e'2 d2 ~|
  d2 h8 c8 d8 g,8 |
  e'2 d2 |
  h2 h8 c8 d8 fis8 |
  fis8. g16 ~g8 g8 ~g4. g8 |
  fis8. g16 ~g8 e8 ~e4. e8 |
  e4 e8 d8 ~d8 h4 a8 ~|
  a2 h8 c8 d8 g,8 \bar "||" |
  e'2 d2 ~|
  d2 h8 c8 d8 g,8 |
  e'2 d2 |
  h4. h8 h8 c8 d8 fis8 |
  fis8. g16 ~g8 g8 ~g4. g8 |
  fis8. g16 ~g8 e8 ~e4 e8 fis8 |
  g4 g8 g8 ~g4 a8 a8 ~|
  a1 \bar "||" |
  \markMoj
  g4 h8 h8 ~h4 g8 a8 ~|
  a2. r8 a8 |
  g4 h8 h8 ~h4 d,8 e8 ~|
  e1 |
  fis4 g8 fis8 ~fis4 e8 d8 ~|
  d8 g4 g8 ~g4. fis8 |
  e4 g8 g8 ~g4 a8 a8 ~|
  a1 |
  g4 h8 h8 ~h4 g8 a8 ~|
  a1 |
  g4 h8 h8 ~h4 d,8 e8 ~|
  e2. r8 e8 |
  fis8 fis8 g8 fis8 ~fis8 e4 d8 ~|
  d8 g4 g8 ~g2 ~|
  g2 r2 |
  g8 fis8 e8 fis8 ~fis8 g4. ~|
  g1 |
  g8 fis8 e8 a8 ~a8 g4. ~|
  g1 |
}

harmonyOne = \chordmode  {
  s1 |
  e1:m7 |
  g1 |
  e1:m7 |
  g2 s4 s4 |
  c1 |
  g1/h |
  c2 d2 |
  g1 |
  e1:m7 |
  d2 c2 |
  a2:m7 g2/h |
  d2 g4 s4 |
  c1 |
  g1/h |
  c2 d2 |
  g1 |
  e1:m7 |
  d2 c2 |
  a2:m7 g2/h |
  d1 |
  g1 |
  d1/fis |
  a2:m7 g2/h |
  c1 |
  d2 d2:7/c |
  g2/h c4 a4:m7/c |
  a2:m7 a2:m7/g |
  d1 |
  g1 |
  d1/fis |
  a2:m7 g2/h |
  c1 |
  d2 d2:7/c |
  g2/h c2 |
  s2 d2 |
  s2 a2:m7 |
  g2/h c2 |
  s2 a2:m7 |
  g2/h d2 |
  \bar "|."
}

alignerOneZero = \relative {
  r2 r8 r8 r8 r8 |
  r1 |
  r2 r8 r8 r8 r8 |
  r1 |
  r2 c8 c8 c8 c8 |
  c2 c2( |
  c2) c8 c8 c8 c8 |
  c2 c2 |
  c2 c8 c8 c8 c8 |
  c8. c16 r8 c8( c4.) c8 |
  c8. c16 r8 c8( c4.) c8 |
  c4 c8 c8 r8 c4 c8( |
  c2) c8 c8 c8 c8 |
  c2 c2( |
  c2) c8 c8 c8 c8 |
  c2 c2 |
  c4. c8 c8 c8 c8 c8 |
  c8. c16 r8 c8( c4.) c8 |
  c8. c16( c8) c8( c4) c8 c8 |
  c4 c8 c8 r4 c8 c8( |
  c1) |
  c4 c8 c8 r4 c8 c8( |
  c2.) r8 c8 |
  c4 c8 c8 r4 c8 c8( |
  c1) |
  c4 c8 c8 r4 c8 c8 |
  r8 c4 c8 r4. r8 |
  c4 c8 c8 r4 c8 c8( |
  c1) |
  c4 c8 c8( c4) c8 c8( |
  c1) |
  c4 c8 c8 r4 c8 c8( |
  c2.) r8 r8 |
  c8 c8 c8 c8 r8 c4 c8 |
  r8 c4 c8( c2 |
  c2) r2 |
  c8 c8 c8 c8 r8 c4.( |
  c1) |
  c8 c8 c8 c8 r8 c4.( |
  c1) |
}

lyricOneZero = \lyricmode {
  %|
  %|
  %|
  %|
  Hva -- la ti za %|
  križ tvoj, __ %|
  cije -- nu što si %|
  pla -- ti -- %|
  o. Grijeh i sram si %|
  po -- ni -- o __ zbog %|
  lju -- ba -- vi __ i %|
  mi -- lost da -- o mi. __ %|
  Hva -- la ti za %|
  lju -- bav, __ %|
  dla -- no -- ve pro -- %|
  bo -- de -- %|
  ne. U kr -- vi me o -- %|
  pe -- ri -- sveg, __ sad %|
  sve što __ znam __ tvoj je %|
  to -- pli za -- gr -- ljaj. __ %|
  %|
  Ja -- nje do -- stoj -- no; __ %|
  na %|
  tro -- nu ne -- bes -- kom, __ %|
  %|
  ve -- li -- čan -- stvom o -- %|
  kru -- njen %|
  vje -- čno vla -- da On. __ %|
  %|
  Uz -- vi -- šen __ nad svim, __ %|
  %|
  I -- sus, Bo -- žji Sin. __ %|
  %|
  Mi -- lje -- nik ne -- ba ra -- %|
  za -- pet, __ %|
  %|
  Ja -- nje do -- stoj -- no, __ %|
  %|
  Ja -- nje do -- stoj -- no. __ %|
  %|
}

\score {
    <<
    \new ChordNames { \romanChords \transpose g c \harmonyOne }
    \new ChordNames { \jazzChords \harmonyOne }
    \new Staff {
        <<
        \new Voice { \staffOne }
        \new NullVoice = "alignerOneZero" { \alignerOneZero }
        \new Lyrics \lyricsto "alignerOneZero" { \lyricOneZero }
        >>
    }
    >>
}

\markup {
  \column {
  }
  \hspace #1
  \column {
  }
}