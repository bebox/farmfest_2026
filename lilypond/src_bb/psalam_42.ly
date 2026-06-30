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
  title = "PSALAM 42"
  composer = "Shane & Shane"
  titlex = "Psalm 42 (Loudest Praise) (Bb)"
  style = ""
  broj = "7"
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
  \time 4/4
  %\tempo 4 = 60
  \partial 4
  e8 fis8 \bar "||" |
  \markMoj
  gis2 r8 e8 fis8. e16 |
  e8 cis8 ~cis4 r4 e8 fis8 |
  gis2 r8 e8 fis8. e16 |
  e2 r4 e8 fis8 | \break
  gis2 r8 e8 fis8. e16 |
  e8 cis8 ~cis4 r4 h'8 a8 |
  gis2 r8 h,8 fis'8. e16 |
  e2 r4 gis8 h8 \bar "||" | \break
  cis2 ~cis8 h8 cis8. h16 |
  h8 gis8 ~gis4 r4 gis8 h8 |
  cis2 ~cis8 h8 h8. gis16 |
  fis2 r4 e8 fis8 | \break
  gis2 r8 e8 fis8. e16 |
  e8 cis8 ~cis4 r4 h'8 a8 |
  gis2 r8 h,8 fis'8. e16 |
  e2 r4 h'8 cis8 \bar "||" | \break
  \markMoj
  e2 ~e8 h8 cis16 (h8 )h16 |
  fis8 e8 r4 r4 h'8 cis8 |
  e2 r8 h8 cis8. h16 |
  h4 r4 r4 h8 cis8 | \break
  e2 ~e8 h8 cis16 (h8 )h16 |
  fis8 e8 r4 r4 h'8. a16 |
  gis2 r8 fis8 gis16 (fis8 )e16 |
  e2 r8 e8 e8 dis16 cis16 ~\bar "||" | \break
  \markMoj
  cis2 r8 e16 e16 e8 dis16 cis16 ~|
  cis2 r4 e8 h16 e16 ~|
  e8 e16 e16 ~e8 e16 e16 ~e8 e16 e16 ~e16 fis8 dis16 ~|
  dis2 r8 e16 e16 e8 dis16 e16 ~|
  e8 dis16 cis16 ~cis4 r8 gis'8 gis8 fis16 e16 (~|
  e8 dis16 cis16 ~cis2 )e8 e16 e16 ~|
  e8 e16 e16 ~e8 e16 e16 ~e8 e16 e16 ~e16 fis8 fis16 ~|
  fis2 r2 |
}

harmonyOne = \chordmode  {
  s4 |
  e2. a4/e |
  e1 |
  s2. a4/e |
  e1 |
  cis2.:m7 h4:m7 |
  a2 ais2:dim7 |
  e2/h h2 |
  a2/e e4 e4/gis |
  a1 |
  e2. e4/gis |
  a1 |
  h1 |
  e2. a4/e |
  e1 |
  e2/h h2 |
  e1 |
  s2. a4 |
  e1 |
  s1 |
  h1 |
  cis2.:m7 h4:m7 |
  a2 ais2:dim7 |
  e2/h h2 |
  e1 |
  cis1:m7 |
  a1 |
  e1 |
  h1 |
  cis1:m7 |
  a1 |
  e1 |
  h1 |
  \bar "|."
}

alignerOneZero = \relative {
  c8 c8 |
  c2 r8 c8 c8. c16 |
  c8 c8( c4) r4 c8 c8 |
  c2 r8 c8 c8. c16 |
  c2 r4 c8 c8 |
  c2 r8 c8 c8. c16 |
  c8 c8( c4) r4 c8 c8 |
  c2 r8 c8 c8. c16 |
  c2 r4 c8 c8 |
  c2 r8 c8 c8. c16 |
  c8 c8( c4) r4 c8 c8 |
  c2( c8) c8 c8. c16 |
  c2 r4 c8 c8 |
  c2 r8 c8 c8. c16 |
  c8 c8( c4) r4 c8 c8 |
  c2 r8 c8 c8. c16 |
  c2 r4 c8 c8 |
  c2 r8 c8 c16 r8 c16 |
  c8 c8 r4 r4 c8 c8 |
  c2 r8 c8 c8. c16 |
  c4 r4 r4 c8 c8 |
  c2 r8 c8 c16( c8) c16 |
  c8 c8 r4 r4 c8. c16 |
  c2 r8 c8 c16 r8 c16 |
  c2 r8 c8 c8 c16 c16( |
  c2) r8 c16 c16 c8 c16 c16( |
  c2) r4 c8 c16 c16( |
  c8) c16 c16 r8 c16 c16( c8) c16 c16 r16 c8 c16( |
  c2) r8 c16 c16 c8 c16 c16( |
  c8) c16 c16( c4) r8 c8 c8 c16 c16( |
  c8 c16 c16 c2) c8 c16 c16 |
  r8 c16 c16( c8) c16 c16 r8 c16 c16 r16 c8 c16( |
  c2) r2 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Ko što %|
  je -- len tra -- ži %|
  vo -- du, __ du -- ša %|
  mo -- ja tra -- ži %|
  Te. Su -- ze %|
  du -- šu mo -- ju %|
  hra -- ne, __ sva -- ko -- %|
  dnev -- no kruh su %|
  moj. Du -- ša %|
  je -- ca sad u %|
  me -- ni, __ uz -- da -- %|
  nje __ je mo -- je %|
  Krist. Ko što %|
  je -- len tra -- ži %|
  vo -- du, __ du -- ša %|
  mo -- ja tra -- ži %|
  Te. Moj si %|
  iz -- vor ži -- ve %|
  vo -- de, sr -- ce %|
  sla -- vlje -- nja mi %|
  daj. Kroz sve %|
  bu -- re i __ o -- %|
  lu -- je, cije -- lim %|
  bi -- ćem sla -- vim %|
  Te. Tu bez -- dan je... __ %|
  Sum -- nje sti -- žu me, __ %|
  lo -- me me __ %|
  i ba -- ca -- ju __ na ko -- lje -- na. __ %|
  Sla -- ma -- ju me pi __ %|
  ta -- nja: __ "\"Gdje" tvoj je "Bog?\"" __ %|
  Čvr -- sto sto -- %|
  ji Hrid __ spa -- se -- nja mo -- je -- ga. __ %|
  %|
}

alignerOneOne = \relative {
  c8 c8 |
  c2 r8 c8 c8. c16 |
  c8 c8( c4) r4 c8 c8 |
  c2 r8 c8 c8. c16 |
  c2 r4 c8 c8 |
  c2 r8 c8 c8. c16 |
  c8 c8( c4) r4 c8 c8 |
  c2 r8 c8 c8. c16 |
  c2 r4 c8 c8 |
  c2 r8 c8 c8. c16 |
  c8 c8( c4) r4 c8 c8 |
  c2 r8 c8 c8. c16 |
  c2 r4 c8 c8 |
  c2 r8 c8 c8. c16 |
  c8 c8( c4) r4 c8 c8 |
  c2 r8 c8 c8. c16 |
  c2 r4 r8 r8 |
  r2 r8 r8 r16 r8 r16 |
  r8 r8 r4 r4 r8 r8 |
  r2 r8 r8 r8. r16 |
  r4 r4 r4 r8 r8 |
  r2 r8 r8 r16 r8 r16 |
  r8 r8 r4 r4 r8. r16 |
  r2 r8 r8 r16 r8 r16 |
  r2 r8 r8 r8 r16 r16 |
  r2 r8 r16 r16 r8 r16 r16 |
  r2 r4 r8 r16 r16 |
  r8 r16 r16 r8 r16 r16 r8 r16 r16 r16 r8 r16 |
  r2 r8 r16 r16 r8 r16 r16 |
  r8 r16 r16 r4 r8 r8 r8 r16 r16 |
  r8 r16 r16 r2 r8 r16 r16 |
  r8 r16 r16 r8 r16 r16 r8 r16 r16 r16 r8 r16 |
  r2 r2 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Du -- ša %|
  tu -- gu -- je u %|
  me -- ni, __ val za %|
  va -- lom lo -- mi %|
  me. Mo -- ja %|
  Hrid me dr -- ži %|
  čvr -- sto, __ sr -- ce %|
  Ti za -- cje -- li %|
  mi. Jer i %|
  no -- ću Ti me %|
  ču -- vaš, __ Tvo -- ju %|
  pjes -- mu do -- bro %|
  znam. Ra -- dost %|
  Tvo -- ja je u %|
  Kris -- tu __ svim Ga %|
  src -- em sla -- vi %|
  sad. %|
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
