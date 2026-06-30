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
  titlex = "Farmfest 2025 (Bb)"
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
  \key a \major
  \time 4/4
  %\tempo 4 = 174
  \markMoj
  r4 a'4 gis8 a8 gis8 d8 ~|
  d4 a'4 gis8 a8 e8 a,8 ~|
  a4 a'4 gis8 a8 gis8 h8 ~|
  h8 a8 gis8 a8 gis8 fis8 e8 fis8 \bar ":|." | \break
  \markMoj
  r4 a8 a8 gis8 a4 gis8 ~|
  gis8 a4 h8 ~h8 a4. |
  r4 e8 cis'8 h8 cis4 h8 ~|
  h8 gis4 h8 ~h8 a4. | \break
  r4 a8 a8 gis8 a4 gis8 ~|
  gis8 a4 h8 ~h8 a4. |
  r4 e8 cis'8 h8 cis4 h8 ~|
  h8 gis4 h8 ~h8 a4. \bar "||" | \break
  \markMoj
  r4 r8 a8 a8 a8 gis4 |
  a2 fis2 |
  a2 e2 |
  h'2 gis2 (| \break
  fis4 )r8 a8 a8 a8 gis4 |
  a2 fis2 |
  a2 a2 |
  h2 h2 ~|
  h1 \bar "||" | \break
  \bar ".|:" \markMoj
  r4 a4 gis8 a8 gis8 d8 ~|
  d4 a'4 gis8 a8 e8 a,8 ~|
  a4 a'4 gis8 a8 gis8 h8 ~|
  h8 a8 gis8 a8 gis8 fis8 e8 fis8 \bar ":|." | \break
  r4 a8 a8 gis8 a4 e'8 ~|
  e4 a,8 a8 gis8 a8 e8 a,8 ~|
  a4 a'8 a8 gis8 a8 gis8 e'8 ~|
  e8 d8 cis8 d8 cis8 h8 cis8 e,8 | \break
  fis4 a4 gis8 a8 gis8 d8 ~|
  d4 a'4 gis8 a8 e8 a,8 ~|
  a4 a'4 gis8 a8 gis8 h8 ~|
  h8 a8 gis8 a8 gis8 fis8 e8 fis8 |
}

harmonyOne = \chordmode  {
  fis1:m |
  d1 |
  a1 |
  e1 |
  fis1:m |
  s2 d2 |
  a1 |
  e1 |
  fis1:m |
  s2 d2 |
  a1 |
  e1 |
  d1 |
  fis1:m |
  a1 |
  e1 |
  d1 |
  fis1:m |
  a1 |
  e1 |
  s1 |
  fis1:m |
  d1 |
  a1 |
  e1 |
  fis1:m |
  d1 |
  a1 |
  e1 |
  fis1:m |
  d1 |
  a1 |
  e1 |
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
