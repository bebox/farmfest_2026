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
  titlex = "Jesus Of Nazareth"
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
  \key g \major
  \time 3/4
  %\tempo 4 = 135
  \markMoj
  e2 d4 |
  d4 g2 |
  a4 g4 a8 h8 |
  h4. a8 g4 |
  e2 d4 |
  d4. g4. |
  a2. |
  r2. | \break
  e4 e4 d4 |
  d4 g2 |
  a4 (g4 )h4 |
  h4. a8 g4 |
  e4 e4 d4 |
  d4. g4. (|
  a2. )|
  r4 r4 g8 a8 \bar "||" | \break
  \markMoj
  h2. |
  h2. |
  r4 c8 c4. |
  c4 h8 a4. |
  a4 a4 a8 a8 ~|
  a4 h4 c4 |
  h4. h4. |
  h4 a4 g4 | \break
  h2. |
  h4. a4. |
  c4. c4. |
  c4 h8 a4. |
  a4 a4 a8 a8 ~|
  a4 h4 c4 |
  h4. h4. |
  h4 a4 g4 | \break
  g2. |
  d'2. ~|
  d2. ~|
  d2. ~|
  d2. |
  r2. |
  h8 c4 h4. |
  a4 g8 a4. | \break
  g2. |
  d'2. (~|
  d2. ~|
  d2. |
  e2. )|
  r4 r4 h4 |
  h8 c4. h4 |
  a2 g4 |
  g2. |
}

harmonyOne = \chordmode  {
  c2. |
  g2. |
  d2. |
  e2.:m |
  c2. |
  g2. |
  d2. |
  s2. |
  c2. |
  g2. |
  d2. |
  e2.:m |
  c2. |
  g2. |
  d2. |
  s2. |
  g2. |
  s2. |
  c2. |
  s2. |
  d2. |
  s2. |
  e2.:m |
  c2. |
  g2. |
  s2. |
  c2. |
  s2. |
  d2. |
  s2. |
  e2.:m |
  d2. |
  c2. |
  s2. |
  g2. |
  d2. |
  c2. |
  s2. |
  e2.:m |
  d2. |
  c2. |
  s2. |
  g2. |
  d2. |
  c2. |
  s2. |
  e2.:m |
  d2. |
  g2. |
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
    \new ChordNames { \romanChords \transpose g c \harmonyOne }
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
