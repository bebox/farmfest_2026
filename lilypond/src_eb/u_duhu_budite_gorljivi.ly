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
  titlex = "Farmfest 2025 (Eb)"
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
  \key h \major
  \time 4/4
  %\tempo 4 = 98
  \markMoj
  r4 dis'8 dis8 dis8 dis4. |
  cis4 dis8 e8 ~e4 e8 dis8 |
  cis8 cis4. r4 cis8 h8 |
  cis4 dis8 dis8 ~dis4 r4 | \break
  r4 dis8 ~dis8 dis8 dis8 cis8 dis8 |
  e2 dis2 |
  cis4 cis8 h8 cis8 h8 r8 cis8 ~|
  cis8 h8 h2 r4 |
  r2 r4 r8 h8 \bar "||" | \break
  \markMoj
  dis4 dis4 dis4 cis8 cis8 ~|
  cis2. r4 |
  r2 gis'4 fis8 cis8 ~|
  cis2 r4 r8 h8 | \break
  dis4 dis4 dis4 cis8 cis8 ~|
  cis2. r4 |
  r2 h8 cis4 cis8 ~|
  cis2 r2 | \break
  r4 r8 h8 dis8 dis4 cis8 ~|
  cis1 |
  r2 gis'4 fis8 cis8 ~|
  cis2 r2 | \break
  r2 r4 dis4 |
  cis2. ais4 |
  h1 |
  r4 cis4 h4 ais4 |
  h1 |
  r1 |
}

harmonyOne = \chordmode  {
  h1 |
  cis1:m |
  fis1:7 |
  h1 |
  s2 h2:7 |
  e2 gis2:7 |
  cis2:m7 fis2:7 |
  h1 |
  s1 |
  s1 |
  fis1 |
  e1 |
  fis1 |
  h1 |
  fis1 |
  e1 |
  fis1 |
  h1 |
  fis1 |
  e1 |
  fis1 |
  h1 |
  fis1 |
  e1 |
  fis1 |
  h1 |
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
