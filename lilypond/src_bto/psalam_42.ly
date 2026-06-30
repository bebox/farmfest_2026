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
  titlex = "Psalm 42 (Loudest Praise) (Sparki)"
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
  \key d \major
  \time 4/4
  %\tempo 4 = 60
  \partial 4
  d8 e8 \bar "||" |
  \markMoj
  fis2 r8 d8 e8. d16 |
  d8 h8 ~h4 r4 d8 e8 |
  fis2 r8 d8 e8. d16 |
  d2 r4 d8 e8 | \break
  fis2 r8 d8 e8. d16 |
  d8 h8 ~h4 r4 a'8 g8 |
  fis2 r8 a,8 e'8. d16 |
  d2 r4 fis8 a8 \bar "||" | \break
  h2 ~h8 a8 h8. a16 |
  a8 fis8 ~fis4 r4 fis8 a8 |
  h2 ~h8 a8 a8. fis16 |
  e2 r4 d8 e8 | \break
  fis2 r8 d8 e8. d16 |
  d8 h8 ~h4 r4 a'8 g8 |
  fis2 r8 a,8 e'8. d16 |
  d2 r4 a'8 h8 \bar "||" | \break
  \markMoj
  d2 ~d8 a8 h16 (a8 )a16 |
  e8 d8 r4 r4 a'8 h8 |
  d2 r8 a8 h8. a16 |
  a4 r4 r4 a8 h8 | \break
  d2 ~d8 a8 h16 (a8 )a16 |
  e8 d8 r4 r4 a'8. g16 |
  fis2 r8 e8 fis16 (e8 )d16 |
  d2 r8 d8 d8 cis16 h16 ~\bar "||" | \break
  \markMoj
  h2 r8 d16 d16 d8 cis16 h16 ~|
  h2 r4 d8 a16 d16 ~|
  d8 d16 d16 ~d8 d16 d16 ~d8 d16 d16 ~d16 e8 cis16 ~|
  cis2 r8 d16 d16 d8 cis16 d16 ~|
  d8 cis16 h16 ~h4 r8 fis'8 fis8 e16 d16 (~|
  d8 cis16 h16 ~h2 )d8 d16 d16 ~|
  d8 d16 d16 ~d8 d16 d16 ~d8 d16 d16 ~d16 e8 e16 ~|
  e2 r2 |
}

harmonyOne = \chordmode  {
  s4 |
  d2. d4 |
  d1 |
  s2. d4 |
  d1 |
  h2. a4 |
  g2 gis2 |
  a2 a2 |
  d2 d4 fis4 |
  g1 |
  d2. fis4 |
  g1 |
  a1 |
  d2. d4 |
  d1 |
  a2 a2 |
  d1 |
  s2. g4 |
  d1 |
  s1 |
  a1 |
  h2. a4 |
  g2 gis2 |
  a2 a2 |
  d1 |
  h1 |
  g1 |
  d1 |
  a1 |
  h1 |
  g1 |
  d1 |
  a1 |
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