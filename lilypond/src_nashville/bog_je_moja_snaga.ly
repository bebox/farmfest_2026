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
  title = "BOG JE MOJA SNAGA"
  composer = "Franko Cetinić"
  titlex = "Farmfest 2025"
  style = ""
  broj = "2"
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
  \time 4/4
  %\tempo 4 = 100
  \markMoj
  e8 g8 g8 e8 g8 e4 (~e8 ~|
  e8 d8 )e8 d8 c4. (c8 )|
  e8 g8 g8 e8 g8 g8 (a8 )a8 ~|
  a2 r4 r8 c,8 |
  e8 g8 g8 e8 g8 e4 g8 (|
  a4 )g4 f8 e4 d8 (~|
  d4 ~d8 ~d8 )d8 d8 (c8 )d8 (|
  d2 )r2 \bar ":|." | \break
  \markMojPonRight
  r4 c'8 c8 c8 c8 c8 c8 |
  d4 c8 c8 ~c4 r4 |
  r4 c8 a8 c4 c8 a8 |
  d4 c8 c8 ~c4 r4 | \break
  r4 c8 a8 c8 c8 c8 c8 |
  d4 c4 h8 c4 d8 ~|
  d4 c4 h4 a8 g8 ~|
  g2 r2 \bar "|." |
}

harmonyOne = \chordmode  {
  c1 |
  a1:m7 |
  c1 |
  a1:m7 |
  c1 |
  f1 |
  d1:7 |
  g1 |
  c1 |
  c1:7 |
  f1 |
  f1:m/as |
  c1/g |
  a1:m6 |
  d1:7 |
  g1 |
  \bar "|."
}

alignerOneZero = \relative {
  c8 c8 c8 c8 c8 c4( c8 |
  c8 c8) c8 c8 c4.( c8) |
  c8 c8 c8 c8 c8 c8 r8 c8( |
  c2) r4 r8 r8 |
  c8 c8 c8 c8 c8 c4 c8 |
  r4 c4 c8 c4 c8( |
  c4 c8 c8) c8 c8 r8 c8( |
  c2) r2 |
  r4 c8 c8 c8 c8 c8 c8 |
  c4 c8 c8( c4) r4 |
  r4 c8 c8 c4 c8 c8 |
  c4 c8 c8( c4) r4 |
  r4 c8 c8 c8 c8 c8 c8 |
  c4 c4 c8 c4 c8( |
  c4) c4 c4 c8 c8( |
  c2) r2 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Bog je mo -- ja sna -- ga __ %|
  kad sam slab. __ %|
  Bog je mo -- ja ut -- je -- ha __ %|
  %|
  kad mi sr -- ce klo -- ne, pre -- %|
  u -- mor -- no da __ %|
  na -- sta -- vi. __ %|
  %|
  Bog je do -- bar, On mi %|
  da -- je sve. __ %|
  Ni -- šta mi ne ne -- %|
  do -- sta -- je. __ %|
  Bog je ve -- lik, svo -- ju %|
  lju -- bav ni -- kad ne __ %|
  us -- kra -- ću -- je. __ %|
  %|
}

alignerOneOne = \relative {
  c8 c8 c8 c8 c8 c4( c8 |
  c8 c8) c8 c8 c4. c8 |
  c8 c8 c8 c8 c8 c8 r8 c8( |
  c2) r4 r8 r8 |
  c8 c8 c8 c8 c8 c4 c8( |
  c4) c4 c8 c4 c8( |
  c4) c8 c8 c8 c8 r8 c8( |
  c2) r2 |
  r4 r8 r8 r8 r8 r8 r8 |
  r4 r8 r8 r4 r4 |
  r4 r8 r8 r4 r8 r8 |
  r4 r8 r8 r4 r4 |
  r4 r8 r8 r8 r8 r8 r8 |
  r4 r4 r8 r4 r8 |
  r4 r4 r4 r8 r8 |
  r2 r2 |
}

lyricOneOne = \lyricmode {
  Bog je čvr -- sta stije -- na, __ %|
  On je jak. Na %|
  Nje -- ga ja se os -- la -- njam __ %|
  %|
  jer On i -- ma sna -- ge da __ %|
  me iz -- ba -- vi __ %|
  od svih ne -- vo -- lja. __ %|
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
  c8 c8 c8 c8 c8 c4( c8 |
  c8 c8) c8 c8 c4.( c8) |
  c8 c8 c8 c8 c8 c8 r8 c8( |
  c2) r4 r8 r8 |
  c8 c8 c8 c8 c8 c4 c8 |
  c4 c4 c8 c4 c8( |
  c4) c8 c8 c8 c8 c8 c8( |
  c2) r2 |
  r4 r8 r8 r8 r8 r8 r8 |
  r4 r8 r8 r4 r4 |
  r4 r8 r8 r4 r8 r8 |
  r4 r8 r8 r4 r4 |
  r4 r8 r8 r8 r8 r8 r8 |
  r4 r4 r8 r4 r8 |
  r4 r4 r4 r8 r8 |
  r2 r2 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "2." Bo -- gu ni -- šta ni -- je __ %|
  skri -- ve -- no. __ %|
  On sve vi -- di, po -- zna -- je. __ %|
  %|
  Nje -- mu vje -- ru -- jem, On će %|
  is -- pu -- ni -- ti sve __ %|
  što o -- be -- ća -- o je. __ %|
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

alignerOneThree = \relative {
  c8 c8 c8 c8 c8 c4 c8 |
  c8 c8 c8 c8 c4. c8 |
  c8 c8 c8 c8 c8 c8 c8 c8 |
  c2 r4 r8 c8 |
  c8 c8 c8 c8 c8 c4 c8 |
  c4 c4 c8 c4 c8( |
  c4 c8 c8) c8 c8 r8 c8( |
  c2) r2 |
  r4 r8 r8 r8 r8 r8 r8 |
  r4 r8 r8 r4 r4 |
  r4 r8 r8 r4 r8 r8 |
  r4 r8 r8 r4 r4 |
  r4 r8 r8 r8 r8 r8 r8 |
  r4 r4 r8 r4 r8 |
  r4 r4 r4 r8 r8 |
  r2 r2 |
}

lyricOneThree = \lyricmode {
  Bog je u -- vijek vje -- ran, i %|
  kad se na -- iz -- gled ne -- %|
  rije -- ši -- vi pro -- ble -- mi po -- ja -- %|
  ve. I %|
  tad sam si -- gu -- ran, On me %|
  iz -- ne -- vje -- ri -- ti __ %|
  ne mo -- že. __ %|
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
    \new ChordNames { \romanChords \transpose c c \harmonyOne }
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
        \new NullVoice = "alignerOneThree" { \alignerOneThree }
        \new Lyrics \lyricsto "alignerOneThree" { \lyricOneThree }
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
