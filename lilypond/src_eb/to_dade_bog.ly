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
  titlex = "Es Walte Gott (Eb)"
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
  \key ges \major
  \time 3/4
  %\tempo 4 = 75
  \partial 4.
  b'8 des8 ges8 \bar "||" |
  \time 5/8
  \markMoj
  es4 des8 des8 ces8 |
  \time 4/4
  des4 b4 r8 as8 b8 es8 |
  \time 3/4
  des8 ces8 b4 as4 |
  ges4. b8 des8 ges8 |
  \time 5/8
  es4 des8 des8 ces8 |
  \time 4/4
  des4 b4 r8 as8 b8 es8 |
  \time 3/4
  des8 ces8 b4 as4 |
  ges4. ges8 as8 des8 \bar "||" | \break
  \time 5/8
  \markMoj
  b4 ges8 ces8 as8 |
  des4 es4 f8 |
  ges4 f8 es8 ges8 |
  f4 des8 des8 ges8 | \break
  \time 5/8
  es4 des8 des8 ces8 |
  \time 4/4
  des4 b4 r8 as8 b8 es8 |
  \time 3/4
  des8 ces8 b4 as4 |
  ges4. r8 r4 |
}

harmonyOne = \chordmode  {
  s4. |
  ces4. as8:m7 s8 |
  des4 es8:m s4 des4 s8 |
  ces4 ges8/des s8 des4 |
  ges8 s4. ges8/b s8 |
  ces4. as4:m7 |
  des4 es4.:m des8 s4 |
  ces4 ges4/des des4 |
  ges2 des4/f |
  ges4 s8 as4:m7 |
  ges8/b s8 ces4. |
  es4.:m as8/c s8 |
  des4. ges4/b |
  ces4 s8 as4:m7 |
  des8 s8 es4.:m des4. |
  ces8 s8 ges4/des des8 s8 |
  ges4. s8 ges4/b |
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
