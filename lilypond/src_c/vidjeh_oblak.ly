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
  title = "VIDJEH OBLAK"
  composer = "108i"
  titlex = "Farmfest 2025"
  style = ""
  broj = "11"
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
  %\tempo 4 = 174
  \markMoj
  r4 g'4 fis8 g8 fis8 c8 ~|
  c4 g'4 fis8 g8 d8 g,8 ~|
  g4 g'4 fis8 g8 fis8 a8 ~|
  a8 g8 fis8 g8 fis8 e8 d8 e8 \bar ":|." | \break
  \markMoj
  r4 g8 g8 fis8 g4 fis8 ~|
  fis8 g4 a8 ~a8 g4. |
  r4 d8 h'8 a8 h4 a8 ~|
  a8 fis4 a8 ~a8 g4. | \break
  r4 g8 g8 fis8 g4 fis8 ~|
  fis8 g4 a8 ~a8 g4. |
  r4 d8 h'8 a8 h4 a8 ~|
  a8 fis4 a8 ~a8 g4. \bar "||" | \break
  \markMoj
  r4 r8 g8 g8 g8 fis4 |
  g2 e2 |
  g2 d2 |
  a'2 fis2 (| \break
  e4 )r8 g8 g8 g8 fis4 |
  g2 e2 |
  g2 g2 |
  a2 a2 ~|
  a1 \bar "||" | \break
  \bar ".|:" \markMoj
  r4 g4 fis8 g8 fis8 c8 ~|
  c4 g'4 fis8 g8 d8 g,8 ~|
  g4 g'4 fis8 g8 fis8 a8 ~|
  a8 g8 fis8 g8 fis8 e8 d8 e8 \bar ":|." | \break
  r4 g8 g8 fis8 g4 d'8 ~|
  d4 g,8 g8 fis8 g8 d8 g,8 ~|
  g4 g'8 g8 fis8 g8 fis8 d'8 ~|
  d8 c8 h8 c8 h8 a8 h8 d,8 | \break
  e4 g4 fis8 g8 fis8 c8 ~|
  c4 g'4 fis8 g8 d8 g,8 ~|
  g4 g'4 fis8 g8 fis8 a8 ~|
  a8 g8 fis8 g8 fis8 e8 d8 e8 |
}

harmonyOne = \chordmode  {
  e1:m |
  c1 |
  g1 |
  d1 |
  e1:m |
  s2 c2 |
  g1 |
  d1 |
  e1:m |
  s2 c2 |
  g1 |
  d1 |
  c1 |
  e1:m |
  g1 |
  d1 |
  c1 |
  e1:m |
  g1 |
  d1 |
  s1 |
  e1:m |
  c1 |
  g1 |
  d1 |
  e1:m |
  c1 |
  g1 |
  d1 |
  e1:m |
  c1 |
  g1 |
  d1 |
  \bar "|."
}

alignerOneZero = \relative {
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r4 c8 c8 c8 c4 c8( |
  c8) c4 c8 r8 c4. |
  r4 c8 c8 c8 c4 c8( |
  c8) c4 c8 r8 c4. |
  r4 c8 c8 c8 c4 c8 |
  r8 c4 c8 r8 c4. |
  r4 c8 c8 c8 c4 c8( |
  c8) c4 c8 r8 c4. |
  r4 r8 c8 c8 c8 c4 |
  c2 c2 |
  c2 c2 |
  c2 c2( |
  c4) r8 c8 c8 c8 c4 |
  c2 c2 |
  c2 c2 |
  c2 c2( |
  c1) |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r4 r8 r8 r8 r4 r8 |
  r4 r8 r8 r8 r8 r8 r8 |
  r4 r8 r8 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
}

lyricOneZero = \lyricmode {
  %|
  %|
  %|
  %|
  \set stanza = "1." Vi -- djeh o -- blak, na __ %|
  njem ne -- tko, %|
  zlat -- ni vje -- nac mu __ %|
  na gla -- vi. %|
  O -- štar mač u ru -- %|
  ci dr -- ži, %|
  prav -- du Bož -- ju da __ %|
  o -- bja -- vi. %|
  A Nje -- mu će %|
  pje -- vat: %|
  "\"Sve" -- ti, %|
  sve -- "ti.\"" __ %|
  A Nje -- mu će %|
  pje -- vat: %|
  "\"Sve" -- ti, %|
  sve -- "ti.\"" __ %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
}

alignerOneOne = \relative {
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r4 c8 c8 c8 c4 c8 |
  r8 c4 c8 r8 c4. |
  r4 c8 c8 c8 c4 c8 |
  r8 c4 c8 r8 c4. |
  r4 c8 c8 c8 c4 c8( |
  c8) c4 c8 r8 c4. |
  r4 c8 c8 c8 c4 c8( |
  c8) c4 c8 r8 c4. |
  r4 r8 c8 c8 c8 c4 |
  c2 c2 |
  c2 c2 |
  c2 c2( |
  c4) r8 c8 c8 c8 c4 |
  c2 c2 |
  c2 c2 |
  c2 c2( |
  c1) |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r4 r8 r8 r8 r4 r8 |
  r4 r8 r8 r8 r8 r8 r8 |
  r4 r8 r8 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
}

lyricOneOne = \lyricmode {
  %|
  %|
  %|
  %|
  \set stanza = "2." Vi -- djeh ne -- bo o -- %|
  tvo -- re -- no, %|
  _ na kon -- ju bjel -- %|
  cu sje -- di. %|
  Voj -- ske ne -- bes -- ke __ %|
  ga pra -- te, %|
  prav -- du Bož -- ju da __ %|
  o -- bja -- vi. %|
  I mi će -- mo %|
  pje -- vat: %|
  "\"Sve" -- ti, %|
  sve -- "ti.\"" __ %|
  I mi će -- mo %|
  pje -- vat: %|
  "\"Sve" -- ti, %|
  sve -- "ti.\"" __ %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
}

alignerOneTwo = \relative {
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r4 c8 c8 c8 c4 c8( |
  c8) c4 c8 r8 c4. |
  r4 c8 c8 c8 c4 c8( |
  c8) c4 c8 r8 c4. |
  r4 c8 c8 c8 c4 c8( |
  c8) c4 c8 r8 c4. |
  r4 c8 c8 c8 c4 c8( |
  c8) c4 c8 r8 c4. |
  r4 r8 r8 r8 r8 r4 |
  r2 r2 |
  r2 r2 |
  r2 r2 |
  r4 r8 r8 r8 r8 r4 |
  r2 r2 |
  r2 r2 |
  r2 r2 |
  r1 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r4 r8 r8 r8 r4 r8 |
  r4 r8 r8 r8 r8 r8 r8 |
  r4 r8 r8 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
}

lyricOneTwo = \lyricmode {
  %|
  %|
  %|
  %|
  \set stanza = "3." Sva -- ka si -- la zla __ %|
  će pa -- sti, %|
  jer do -- la -- zi On __ %|
  po svo -- je. %|
  Sve -- ti na -- rod da __ %|
  iz -- ba -- vi, %|
  sla -- vu svo -- ju da __ %|
  o -- bja -- vi. %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
}

\score {
    <<
    \new ChordNames { \jazzChords \harmonyOne }
    \new Staff {
        <<
        \new Voice { \staffOne }
        \new NullVoice = "alignerOneZero" { \alignerOneZero }
        \new Lyrics \lyricsto "alignerOneZero" { \lyricOneZero }
        \new NullVoice = "alignerOneOne" { \alignerOneOne }
        \new Lyrics \lyricsto "alignerOneOne" { \lyricOneOne }
        \new NullVoice = "alignerOneTwo" { \alignerOneTwo }
        \new Lyrics \lyricsto "alignerOneTwo" { \lyricOneTwo }
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