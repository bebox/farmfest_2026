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
  title = "TO DADE BOG"
  titlex = "Es Walte Gott"
  composer = "Rebecca Watta"
  style = ""
  broj = "8"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  system-system-spacing.padding = #2.0
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #0
  last-bottom-spacing = #'((basic-distance . 5) (minimum-distance . 4) (padding . 0) (stretchability . 0))
}

staffOne = \relative c' {
  \key a \major
  \time 3/4
  %\tempo 4 = 75
  \partial 4.
  cis8 e8 a8 \bar "||" |
  \time 5/8
  \markMoj
  fis4 e8 e8 d8 |
  \time 4/4
  e4 cis4 r8 h8 cis8 fis8 |
  \time 3/4
  e8 d8 cis4 h4 |
  a4. cis8 e8 a8 |
  \time 5/8
  fis4 e8 e8 d8 |
  \time 4/4
  e4 cis4 r8 h8 cis8 fis8 |
  \time 3/4
  e8 d8 cis4 h4 |
  a4. a8 h8 e8 \bar "||" | \break
  \time 5/8
  \markMoj
  cis4 a8 d8 h8 |
  e4 fis4 gis8 |
  a4 gis8 fis8 a8 |
  gis4 e8 e8 a8 | \break
  \time 5/8
  fis4 e8 e8 d8 |
  \time 4/4
  e4 cis4 r8 h8 cis8 fis8 |
  \time 3/4
  e8 d8 cis4 h4 |
  a4. r8 r4 |
}

harmonyOne = \chordmode  {
  s4. |
  d4. h8:m7 s8 |
  e4 fis8:m s4 e4 s8 |
  d4 a8/e s8 e4 |
  a8 s4. a8/cis s8 |
  d4. h4:m7 |
  e4 fis4.:m e8 s4 |
  d4 a4/e e4 |
  a2 e4/gis |
  a4 s8 h4:m7 |
  a8/cis s8 d4. |
  fis4.:m h8/dis s8 |
  e4. a4/cis |
  d4 s8 h4:m7 |
  e8 s8 fis4.:m e4. |
  d8 s8 a4/e e8 s8 |
  a4. s8 a4/cis |
  \bar "|."
}

alignerOneZero = \relative {
  c8 c8 c8 |
  c4 c8 c8 c8 |
  c4 c4 r8 c8 c8 c8 |
  c8 c8 c4 c4 |
  c4. c8 c8 c8 |
  c4 c8 c8 c8 |
  c4 c4 r8 c8 c8 c8 |
  c8 c8 c4 c4 |
  c4. c8 c8 c8 |
  c4 c8 c8 c8 |
  c4 c4 c8 |
  c4 c8 c8 c8 |
  c4 c8 c8 c8 |
  c4 c8 c8 c8 |
  c4 c4 r8 c8 c8 c8 |
  c8 c8 c4 c4 |
  c4. r8 r4 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." To da -- de %|
  Bog u mo -- me %|
  sr -- cu, po vo -- lji %|
  Kri -- sta I -- su -- %|
  sa. Dal’ slav -- lje, %|
  pi -- ta -- nja il' %|
  su -- ze, On dr -- ži %|
  sve u ru -- ka -- %|
  ma. On vje -- čno %|
  ču -- va mo -- je %|
  i -- me, ni %|
  dug mi ne bro -- %|
  ji, sra -- mo -- te %|
  mo -- je vi -- še %|
  ne -- ma, riječ Nje -- go -- %|
  va je do -- volj -- %|
  na. %|
}

alignerOneOne = \relative {
  c8 c8 c8 |
  c4 c8 c8 c8 |
  c4 c4 r8 c8 c8 c8 |
  c8 c8 c4 c4 |
  c4. c8 c8 c8 |
  c4 c8 c8 c8 |
  c4 c4 r8 c8 c8 c8 |
  c8 c8 c4 c4 |
  c4. c8 c8 c8 |
  c4 c8 c8 c8 |
  c4 c4 c8 |
  c4 c8 c8 c8 |
  c4 c8 c8 c8 |
  c4 c8 c8 c8 |
  c4 c4 r8 c8 c8 c8 |
  c8 c8 c4 c4 |
  c4. r8 r4 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." To da -- de %|
  Bog, naš do -- bar %|
  O -- tac. On sve -- mo -- %|
  ćan je, je -- di -- %|
  ni. Ne su -- sta -- %|
  je i ne -- će %|
  pas -- ti, i dr -- ži %|
  što o -- be -- ća -- %|
  je. Na gla -- vi %|
  bro -- ji sva -- ku %|
  vlas, On put %|
  do -- bar po -- zna -- %|
  je, ko -- ji kroz %|
  ta -- mu me -- ne %|
  vo -- di u svo -- je %|
  ru -- ke ši -- ro -- %|
  ke. %|
}

alignerOneTwo = \relative {
  c8 c8 c8 |
  c4 c8 c8 c8 |
  c4 c4 r8 c8 c8 c8 |
  c8 c8 c4 c4 |
  c4. c8 c8 c8 |
  c4 c8 c8 c8 |
  c4 c4 r8 c8 c8 c8 |
  c8 c8 c4 c4 |
  c4. c8 c8 c8 |
  c4 c8 c8 c8 |
  c4 c4 c8 |
  c4 c8 c8 c8 |
  c4 c8 c8 c8 |
  c4 c8 c8 c8 |
  c4 c4 r8 c8 c8 c8 |
  c8 c8 c4 c4 |
  c4. r8 r4 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." To da -- de %|
  Bog, sve što ja %|
  je -- sam. Moj ži -- vot %|
  nje -- mu pri -- pa -- %|
  da. Nje -- gov je %|
  svijet i sve na %|
  nje -- mu, po Njem’ do -- %|
  bi -- va smi -- sa -- %|
  o. Me -- ne je %|
  pr -- vi lju -- bi -- %|
  o, po -- zna -- %|
  o i cije -- ni -- %|
  o. Ži -- vot je %|
  si -- gu -- ran u %|
  Nje -- mu, gdje ne -- iz -- %|
  mjer -- no vrije -- dan %|
  sam. %|
}

\score {
    <<
    \new ChordNames { \romanChords \transpose a c \harmonyOne }
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
