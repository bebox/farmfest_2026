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
  title = "ISUS NAZAREĆANIN"
  composer = "John Van Deusen"
  titlex = "Jesus Of Nazareth (Eb)"
  style = ""
  broj = "4"
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
  \key e \major
  \time 3/4
  %\tempo 4 = 135
  \markMoj
  cis'2 h4 |
  h4 e2 |
  fis4 e4 fis8 gis8 |
  gis4. fis8 e4 |
  cis2 h4 |
  h4. e4. |
  fis2. |
  r2. | \break
  cis4 cis4 h4 |
  h4 e2 |
  fis4 (e4 )gis4 |
  gis4. fis8 e4 |
  cis4 cis4 h4 |
  h4. e4. (|
  fis2. )|
  r4 r4 e8 fis8 \bar "||" | \break
  \markMoj
  gis2. |
  gis2. |
  r4 a8 a4. |
  a4 gis8 fis4. |
  fis4 fis4 fis8 fis8 ~|
  fis4 gis4 a4 |
  gis4. gis4. |
  gis4 fis4 e4 | \break
  gis2. |
  gis4. fis4. |
  a4. a4. |
  a4 gis8 fis4. |
  fis4 fis4 fis8 fis8 ~|
  fis4 gis4 a4 |
  gis4. gis4. |
  gis4 fis4 e4 | \break
  e2. |
  h'2. ~|
  h2. ~|
  h2. ~|
  h2. |
  r2. |
  gis8 a4 gis4. |
  fis4 e8 fis4. | \break
  e2. |
  h'2. (~|
  h2. ~|
  h2. |
  cis2. )|
  r4 r4 gis4 |
  gis8 a4. gis4 |
  fis2 e4 |
  e2. |
}

harmonyOne = \chordmode  {
  a2. |
  e2. |
  h2. |
  cis2.:m |
  a2. |
  e2. |
  h2. |
  s2. |
  a2. |
  e2. |
  h2. |
  cis2.:m |
  a2. |
  e2. |
  h2. |
  s2. |
  e2. |
  s2. |
  a2. |
  s2. |
  h2. |
  s2. |
  cis2.:m |
  a2. |
  e2. |
  s2. |
  a2. |
  s2. |
  h2. |
  s2. |
  cis2.:m |
  h2. |
  a2. |
  s2. |
  e2. |
  h2. |
  a2. |
  s2. |
  cis2.:m |
  h2. |
  a2. |
  s2. |
  e2. |
  h2. |
  a2. |
  s2. |
  cis2.:m |
  h2. |
  e2. |
  \bar "|."
}

alignerOneZero = \relative {
  c2 c4 |
  c4 c2 |
  c4 c4 c8 c8 |
  c4. c8 c4 |
  c2 c4 |
  c4. c4. |
  c2. |
  r2. |
  c4 c4 c4 |
  c4 c2 |
  c4( c4) c4 |
  c4. c8 c4 |
  c4 c4 c4 |
  c4. c4.( |
  c2.) |
  r4 r4 c8 c8 |
  c2. |
  c2. |
  r4 c8 c4. |
  c4 c8 c4. |
  c4 c4 c8 c8( |
  c4) c4 c4 |
  c4. c4. |
  c4 c4 c4 |
  c2. |
  c4. c4. |
  c4. c4. |
  c4 c8 c4. |
  c4 c4 c8 c8 |
  r4 c4 c4 |
  c4. c4. |
  c4 c4 c4 |
  c2. |
  c2.( |
  c2. |
  c2. |
  c2.) |
  r2. |
  c8 c4 c4. |
  c4 c8 c4. |
  c2. |
  c2.( |
  c2. |
  c2. |
  c2.) |
  r4 r4 c4 |
  c8 c4. c4 |
  c2 c4 |
  c2. |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Go spo -- %|
  dar je %|
  I -- sus Na -- za -- %|
  re -- ća -- nin, %|
  moj Ot -- %|
  ku -- pi -- %|
  telj. %|
  %|
  Sad i za -- %|
  u -- vijek %|
  moj __ je %|
  za -- stup -- nik, %|
  mi -- lost bez %|
  mje -- re. __ %|
  %|
  Pje -- vam: %|
  zar %|
  me %|
  lju -- bi %|
  to -- li -- ko? %|
  Pro -- sti -- re se __ %|
  iz -- nad %|
  sveg o -- %|
  bja -- šnjiv -- og. %|
  Ne -- %|
  vje -- ro -- %|
  ja -- tno %|
  do -- bro je %|
  bi -- ti u mi -- %|
  lo -- sti %|
  sla -- ve %|
  nje -- go -- ve. %|
  Ne %|
  bih __ %|
  %|
  %|
  %|
  %|
  ni -- kad se %|
  vra -- ti -- o, %|
  nit' %|
  bih __ %|
  %|
  %|
  %|
  tu %|
  lju -- bav za -- %|
  mje -- ni -- %|
  o. %|
}

alignerOneOne = \relative {
  c2 c4 |
  c4 c2 |
  c4 c4 c8 c8 |
  c4. c8 c4 |
  c2 c4 |
  c4. c4. |
  c2. |
  r2. |
  c4 c4 c4 |
  c4 c2 |
  c4 r4 c4 |
  c4. c8 c4 |
  c4 c4 c4 |
  c4. c4.( |
  c2.) |
  r4 r4 r8 r8 |
  r2. |
  r2. |
  r4 r8 r4. |
  r4 r8 r4. |
  r4 r4 r8 r8 |
  r4 r4 r4 |
  r4. r4. |
  r4 r4 r4 |
  r2. |
  r4. r4. |
  r4. r4. |
  r4 r8 r4. |
  r4 r4 r8 r8 |
  r4 r4 r4 |
  r4. r4. |
  r4 r4 r4 |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r8 r4 r4. |
  r4 r8 r4. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r4 r4 r4 |
  r8 r4. r4 |
  r2 r4 |
  r2. |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Pri -- ja -- %|
  telj moj %|
  I -- sus Na -- za -- %|
  re -- ća -- nin, %|
  znam, On %|
  lju -- bi %|
  me. %|
  %|
  Do -- bri je %|
  Pa -- stir, %|
  u -- vijek %|
  šti -- ti me, %|
  mi -- lost bez %|
  mje -- re. __ %|
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
