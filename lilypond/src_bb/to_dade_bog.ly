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
  titlex = "Es Walte Gott (Bb)"
  composer = "Rebecca Watta"
  style = ""
  broj = "8"
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
  \time 3/4
  %\tempo 4 = 75
  \partial 4.
  dis8 fis8 h8 \bar "||" |
  \time 5/8
  \markMoj
  gis4 fis8 fis8 e8 |
  \time 4/4
  fis4 dis4 r8 cis8 dis8 gis8 |
  \time 3/4
  fis8 e8 dis4 cis4 |
  h4. dis8 fis8 h8 |
  \time 5/8
  gis4 fis8 fis8 e8 |
  \time 4/4
  fis4 dis4 r8 cis8 dis8 gis8 |
  \time 3/4
  fis8 e8 dis4 cis4 |
  h4. h8 cis8 fis8 \bar "||" | \break
  \time 5/8
  \markMoj
  dis4 h8 e8 cis8 |
  fis4 gis4 ais8 |
  h4 ais8 gis8 h8 |
  ais4 fis8 fis8 h8 | \break
  \time 5/8
  gis4 fis8 fis8 e8 |
  \time 4/4
  fis4 dis4 r8 cis8 dis8 gis8 |
  \time 3/4
  fis8 e8 dis4 cis4 |
  h4. r8 r4 |
}

harmonyOne = \chordmode  {
  s4. |
  e4. cis8:m7 s8 |
  fis4 gis8:m s4 fis4 s8 |
  e4 h8/fis s8 fis4 |
  h8 s4. h8/dis s8 |
  e4. cis4:m7 |
  fis4 gis4.:m fis8 s4 |
  e4 h4/fis fis4 |
  h2 fis4/ais |
  h4 s8 cis4:m7 |
  h8/dis s8 e4. |
  gis4.:m cis8/eis s8 |
  fis4. h4/dis |
  e4 s8 cis4:m7 |
  fis8 s8 gis4.:m fis4. |
  e8 s8 h4/fis fis8 s8 |
  h4. s8 h4/dis |
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
