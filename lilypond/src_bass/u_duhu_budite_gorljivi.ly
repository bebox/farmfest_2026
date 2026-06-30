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
  title = "U DUHU BUDITE GORLJIVI"
  composer = "Franko Cetinić"
  titlex = "Farmfest 2025 (BASS)"
  style = ""
  broj = "10"
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
  \key d \major
  \time 4/4
  %\tempo 4 = 98
  \markMoj
  r4 fis8 fis8 fis8 fis4. |
  e4 fis8 g8 ~g4 g8 fis8 |
  e8 e4. r4 e8 d8 |
  e4 fis8 fis8 ~fis4 r4 | \break
  r4 fis8 ~fis8 fis8 fis8 e8 fis8 |
  g2 fis2 |
  e4 e8 d8 e8 d8 r8 e8 ~|
  e8 d8 d2 r4 |
  r2 r4 r8 d8 \bar "||" | \break
  \markMoj
  fis4 fis4 fis4 e8 e8 ~|
  e2. r4 |
  r2 h'4 a8 e8 ~|
  e2 r4 r8 d8 | \break
  fis4 fis4 fis4 e8 e8 ~|
  e2. r4 |
  r2 d8 e4 e8 ~|
  e2 r2 | \break
  r4 r8 d8 fis8 fis4 e8 ~|
  e1 |
  r2 h'4 a8 e8 ~|
  e2 r2 | \break
  r2 r4 fis4 |
  e2. cis4 |
  d1 |
  r4 e4 d4 cis4 |
  d1 |
  r1 |
}

harmonyOne = \chordmode  {
  d1 |
  e1:m |
  a1:7 |
  d1 |
  s2 d2:7 |
  g2 h2:7 |
  e2:m7 a2:7 |
  d1 |
  s1 |
  s1 |
  a1 |
  g1 |
  a1 |
  d1 |
  a1 |
  g1 |
  a1 |
  d1 |
  a1 |
  g1 |
  a1 |
  d1 |
  a1 |
  g1 |
  a1 |
  d1 |
  s1 |
  \bar "|."
}

alignerOneZero = \relative {
  r4 c8 c8 c8 c4. |
  c4 c8 c8( c4) c8 c8 |
  c8 c4. r4 c8 c8 |
  c4 c8 c8 r4 r4 |
  r4 c8( c8) c8 c8 c8 c8 |
  c2 c2 |
  c4 c8 c8 c8 c8 r8 c8 |
  r8 c8 c2 r4 |
  r2 r4 r8 c8 |
  c4 c4 c4 c8 c8( |
  c2.) r4 |
  r2 c4 c8 c8( |
  c2) r4 r8 c8 |
  c4 c4 c4 c8 c8( |
  c2.) r4 |
  r2 c8 c4 c8( |
  c2) r2 |
  r4 r8 c8 c8 c4 c8( |
  c1) |
  r2 c4 c8 c8( |
  c2) r2 |
  r2 r4 c4 |
  c2. c4 |
  c1 |
  r4 c4 c4 c4 |
  c1 |
  r1 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Nek u va -- šim %|
  mi -- sli -- ma __ bu -- de %|
  što je ne -- ba %|
  do -- stoj -- no, %|
  da __ mo -- že -- te pro -- %|
  su -- di -- %|
  ti što je Bo -- gu u -- %|
  god -- no. %|
  U %|
  du -- hu bu -- di -- te __ %|
  %|
  gor -- lji -- vi, __ %|
  u %|
  na -- di bu -- di -- te __ %|
  %|
  ra -- dos -- ni, __ %|
  %|
  u ne -- vo -- lji __ %|
  %|
  str -- plji -- vi, __ %|
  %|
  u %|
  mo -- lit -- %|
  vi %|
  po -- sto -- ja -- %|
  ni. %|
  %|
}

alignerOneOne = \relative {
  r4 c8 c8 c8 c4. |
  c4 c8 c8( c4) c8 c8 |
  c8 c4. r4 c8 c8 |
  c4 c8 c8 r4 r4 |
  r4 c8 c8 c8 c8 c8 c8 |
  c2 c2 |
  c4( c8) c8 c8 c8 r8 c8 |
  r8 c8 c2 r4 |
  r2 r4 r8 r8 |
  r4 r4 r4 r8 r8 |
  r2. r4 |
  r2 r4 r8 r8 |
  r2 r4 r8 r8 |
  r4 r4 r4 r8 r8 |
  r2. r4 |
  r2 r8 r4 r8 |
  r2 r2 |
  r4 r8 r8 r8 r4 r8 |
  r1 |
  r2 r4 r8 r8 |
  r2 r2 |
  r2 r4 r4 |
  r2. r4 |
  r1 |
  r4 r4 r4 r4 |
  r1 |
  r1 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Lju -- bav nek je %|
  is -- kre -- na, __ me -- đu %|
  va -- ma brat -- ska, %|
  sr -- dač -- na. %|
  Klo -- ni -- te se sve -- ga %|
  što je %|
  zlo __ u Bož -- jim o -- %|
  či -- ma. %|
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

alignerOneTwo = \relative {
  r4 c8 c8 c8 c4. |
  c4 c8 c8( c4) c8 c8( |
  c8 c4.) r4 c8( c8) |
  c4 c8 c8 r4 r4 |
  r4 c8( c8) c8 c8 c8 c8 |
  c2 c2 |
  c4( c8 c8) c8 c8 r8 c8 |
  r8 c8 c2 r4 |
  r2 r4 r8 r8 |
  r4 r4 r4 r8 r8 |
  r2. r4 |
  r2 r4 r8 r8 |
  r2 r4 r8 r8 |
  r4 r4 r4 r8 r8 |
  r2. r4 |
  r2 r8 r4 r8 |
  r2 r2 |
  r4 r8 r8 r8 r4 r8 |
  r1 |
  r2 r4 r8 r8 |
  r2 r2 |
  r2 r4 r4 |
  r2. r4 |
  r1 |
  r4 r4 r4 r4 |
  r1 |
  r1 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Ra -- duj -- te se %|
  "s o" -- ni -- ma __ ko -- ji __ %|
  se __ %|
  ra -- du -- ju, %|
  i __ tu -- guj -- te sa %|
  o -- ni -- %|
  ma __ ko -- ji tu -- %|
  gu -- ju. %|
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
    \new ChordNames { \jazzChords \clef bass \transpose c' c \harmonyOne }
    \new Staff {
        <<
        \new Voice { \clef bass \transpose c' c \staffOne }
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