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
  title = "HALELUJA PRIČA"
  composer = "John Van Deusen"
  titlex = "Hallelujah Story"
  style = ""
  broj = "1"
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
  %\tempo 4 = 130
  r2 r4 a'4 \bar "||" |
  \markMoj
  g4 e4 c4 d4 ~|
  d2 d8 e8 d8 c8 |
  d2 d8 e8 d8 c8 |
  a2. a'4 |
  g4 e4 c4 d4 ~|
  d2 f8 e8 d8 c8 |
  c4. d8 ~d4 a4 ~|
  a8 c4. g4 a'4 |
  \bar ".|:" \markMoj
  g4 e4 c4 d4 ~|
  d2 d8 e8 d8 c8 |
  d2 d8 e8 d8 c8 |
  a2. a'4 |
  g4 e4 c4 d4 ~|
  d2 f8 e8 d8 c8 |
  c1 |
  r2 r4 c'4 \bar ":|." |
  \bar ".|:" \markMoj
  c4 g4 c4 d4 ~|
  d2 d8 e8 d8 c8 |
  d2 d8 e8 d8 c8 |
  a2. c4 |
  c4 g4 c4 d4 ~|
  d2 f8 e8 d8 c8 |
  c1 \bar ":|." |
  \bar ".|:" \markMoj
  c2 c4. g8 |
  c8 c4 c8 ~c8 c4 c8 (~|
  c8 d8 )d2. |
  r1 |
  g8 g4 g8 ~g8 e4 e8 ~|
  e8 e4 f8 ~f8 e4 e8 (~|
  e8 d8 )d2. |
  r1 \bar ":|." |
}

harmonyOne = \chordmode  {
  s1 |
  c1 |
  g1 |
  d1:m |
  f1 |
  c1 |
  g1 |
  f1 |
  s1 |
  c1 |
  g1 |
  d1:m |
  f1 |
  c1 |
  g1 |
  f1 |
  s1 |
  c1 |
  g1 |
  d1:m |
  f1 |
  c1 |
  g1 |
  f1 |
  s1 |
  a1:m |
  g1 |
  s1 |
  f1 |
  c1 |
  g1 |
  s1 |
  \bar "|."
}

alignerOneZero = \relative {
  r2 r4 r4 |
  r4 r4 r4 r4 |
  r2 r8 r8 r8 r8 |
  r2 r8 r8 r8 r8 |
  r2. r4 |
  r4 r4 r4 r4 |
  r2 r8 r8 r8 r8 |
  r4. r8 r4 r4 |
  r8 r4. r4 c4 |
  c4 c4 c4 c4( |
  c2) c8 c8 c8 c8 |
  c2 c8 c8 c8 c8 |
  c2. c4 |
  c4 c4 c4 c4( |
  c2) c8 c8 c8 c8 |
  c1 |
  r2 r4 c4 |
  c4 c4 c4 c4( |
  c2) c8 c8 c8 c8 |
  c2 c8 c8 c8 c8 |
  c2. c4 |
  c4 c4 c4 c4( |
  c2) c8 c8 c8 c8 |
  c1 |
  c2 c4. c8 |
  c8 c4 c8 r8 c4 c8 |
  r8 r8 c2. |
  r1 |
  c8 c4 c8( c8) c4 c8 |
  r8 c4 c8 r8 c4 c8 |
  r8 r8 c2. |
  r1 |
}

lyricOneZero = \lyricmode {
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  Naš %|
  kralj Ja -- hve je __ %|
  Stvo -- ri -- o je %|
  sve svo -- jim rije -- či -- %|
  ma Da %|
  spo -- zna -- mo ga __ %|
  Lju -- bav Nje -- go -- %|
  vu %|
  Mi -- %|
  lo -- sti -- vo je __ %|
  po -- ni -- o na %|
  križ na -- še grije -- he %|
  sve I -- %|
  zbo -- ri -- o je __ %|
  sla -- vnu po -- bje -- %|
  du %|
  O -- vo je %|
  hal -- le -- lu -- ja pri -- %|
  ča %|
  %|
  Sa -- mo On __ je sve -- %|
  ti sve -- ti sve -- %|
  ti %|
  %|
}

alignerOneOne = \relative {
  r2 r4 r4 |
  r4 r4 r4 r4 |
  r2 r8 r8 r8 r8 |
  r2 r8 r8 r8 r8 |
  r2. r4 |
  r4 r4 r4 r4 |
  r2 r8 r8 r8 r8 |
  r4. r8 r4 r4 |
  r8 r4. r4 c4 |
  c4 c4 c4 c4( |
  c2) c8 c8 c8 c8 |
  c2 c8 c8 c8 c8 |
  c2. c4 |
  c4 c4 c4 c4( |
  c2) c8 c8 c8 c8 |
  c1 |
  r2 r4 c4 |
  c4 c4 c4 c4( |
  c2) c8 c8 c8 c8 |
  c2 c8 c8 c8 c8 |
  c2. c4 |
  c4 c4 c4 c4( |
  c2) c8 c8 c8 c8 |
  c1 |
  r2 r4. r8 |
  r8 r4 r8 r8 r4 r8 |
  r8 r8 r2. |
  r1 |
  r8 r4 r8 r8 r4 r8 |
  r8 r4 r8 r8 r4 r8 |
  r8 r8 r2. |
  r1 |
}

lyricOneOne = \lyricmode {
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  Na %|
  i -- zbor nam da, __ %|
  Vo -- lju slo -- bo -- %|
  dnu, slu -- ša -- ti mu %|
  glas I %|
  bi -- ra -- mo ga __ %|
  u -- vijek i -- zno -- %|
  va %|
  U -- %|
  skr -- snu -- o je __ %|
  skr -- ši -- o je %|
  grob si -- lom du -- ha %|
  svog I %|
  nov’ sa -- vez je __ %|
  "s na" -- ma sklo -- pi -- %|
  o %|
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
  r2 r4 r4 |
  r4 r4 r4 r4 |
  r2 r8 r8 r8 r8 |
  r2 r8 r8 r8 r8 |
  r2. r4 |
  r4 r4 r4 r4 |
  r2 r8 r8 r8 r8 |
  r4. r8 r4 r4 |
  r8 r4. r4 c4 |
  c4 c4 c4 c4( |
  c2) c8 c8 c8 c8 |
  c2 c8 c8 c8 c8 |
  c2. c4 |
  c4 c4 c4 c4( |
  c2) c8 c8 c8 c8 |
  c1 |
  r2 r4 c4 |
  c4 c4 c4 c4( |
  c2) c8 c8 c8 c8 |
  c2 c8 c8 c8 c8 |
  c2. c4 |
  c4 c4 c4 c4( |
  c2) c8 c8 c8 c8 |
  c1 |
  r2 r4. r8 |
  r8 r4 r8 r8 r4 r8 |
  r8 r8 r2. |
  r1 |
  r8 r4 r8 r8 r4 r8 |
  r8 r4 r8 r8 r4 r8 |
  r8 r8 r2. |
  r1 |
}

lyricOneTwo = \lyricmode {
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  Sad %|
  kr -- šte -- ni smo __ %|
  Du -- hom ro -- đe -- %|
  ni rije -- čju vo -- đe -- %|
  ni U %|
  svje -- tlu smo mi __ %|
  Ka -- o što je %|
  On %|
  Bla -- %|
  go -- slo -- vlje -- ni __ %|
  Vje -- ru -- rej -- mo %|
  mu pri -- zna -- je -- mo %|
  sve I %|
  na -- da -- mo se __ %|
  Bo -- žjem na -- slje -- %|
  đu %|
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