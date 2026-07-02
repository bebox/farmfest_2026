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
  title = "HVALA TI ZA KRIŽ TVOJ"
  composer = "Darlene Zschech"
  titlex = "(Worthy Is The Lamb) (Eb)"
  style = ""
  broj = "3"
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
  %\tempo 4 = 77
  r2 gis'8 h8 e8 dis8 \bar "||" |
  \markMoj
  dis1 |
  h2 gis8 h8 e8 dis8 |
  dis1 |
  h2 gis8 a8 h8 e,8 \bar "||" |
  \markMoj
  cis'2 h2 ~|
  h2 gis8 a8 h8 e,8 |
  cis'2 h2 |
  gis2 gis8 a8 h8 dis8 |
  dis8. e16 ~e8 e8 ~e4. e8 |
  dis8. e16 ~e8 cis8 ~cis4. cis8 |
  cis4 cis8 h8 ~h8 gis4 fis8 ~|
  fis2 gis8 a8 h8 e,8 \bar "||" |
  cis'2 h2 ~|
  h2 gis8 a8 h8 e,8 |
  cis'2 h2 |
  gis4. gis8 gis8 a8 h8 dis8 |
  dis8. e16 ~e8 e8 ~e4. e8 |
  dis8. e16 ~e8 cis8 ~cis4 cis8 dis8 |
  e4 e8 e8 ~e4 fis8 fis8 ~|
  fis1 \bar "||" |
  \markMoj
  e4 gis8 gis8 ~gis4 e8 fis8 ~|
  fis2. r8 fis8 |
  e4 gis8 gis8 ~gis4 h,8 cis8 ~|
  cis1 |
  dis4 e8 dis8 ~dis4 cis8 h8 ~|
  h8 e4 e8 ~e4. dis8 |
  cis4 e8 e8 ~e4 fis8 fis8 ~|
  fis1 |
  e4 gis8 gis8 ~gis4 e8 fis8 ~|
  fis1 |
  e4 gis8 gis8 ~gis4 h,8 cis8 ~|
  cis2. r8 cis8 |
  dis8 dis8 e8 dis8 ~dis8 cis4 h8 ~|
  h8 e4 e8 ~e2 ~|
  e2 r2 |
  e8 dis8 cis8 dis8 ~dis8 e4. ~|
  e1 |
  e8 dis8 cis8 fis8 ~fis8 e4. ~|
  e1 |
}

harmonyOne = \chordmode  {
  s1 |
  e1:m7 |
  g1 |
  e1:m7 |
  g2 s4 s4 |
  c1 |
  g1/h |
  c2 d2 |
  g1 |
  e1:m7 |
  d2 c2 |
  a2:m7 g2/h |
  d2 g4 s4 |
  c1 |
  g1/h |
  c2 d2 |
  g1 |
  e1:m7 |
  d2 c2 |
  a2:m7 g2/h |
  d1 |
  g1 |
  d1/fis |
  a2:m7 g2/h |
  c1 |
  d2 d2:7/c |
  g2/h c4 a4:m7/c |
  a2:m7 a2:m7/g |
  d1 |
  g1 |
  d1/fis |
  a2:m7 g2/h |
  c1 |
  d2 d2:7/c |
  g2/h c2 |
  s2 d2 |
  s2 a2:m7 |
  g2/h c2 |
  s2 a2:m7 |
  g2/h d2 |
  \bar "|."
}

alignerOneZero = \relative {
  r2 r8 r8 r8 r8 |
  r1 |
  r2 r8 r8 r8 r8 |
  r1 |
  r2 c8 c8 c8 c8 |
  c2 c2( |
  c2) c8 c8 c8 c8 |
  c2 c2 |
  c2 c8 c8 c8 c8 |
  c8. c16 r8 c8( c4.) c8 |
  c8. c16 r8 c8( c4.) c8 |
  c4 c8 c8 r8 c4 c8( |
  c2) c8 c8 c8 c8 |
  c2 c2( |
  c2) c8 c8 c8 c8 |
  c2 c2 |
  c4. c8 c8 c8 c8 c8 |
  c8. c16 r8 c8( c4.) c8 |
  c8. c16( c8) c8( c4) c8 c8 |
  c4 c8 c8 r4 c8 c8( |
  c1) |
  c4 c8 c8 r4 c8 c8( |
  c2.) r8 c8 |
  c4 c8 c8 r4 c8 c8( |
  c1) |
  c4 c8 c8 r4 c8 c8 |
  r8 c4 c8 r4. r8 |
  c4 c8 c8 r4 c8 c8( |
  c1) |
  c4 c8 c8( c4) c8 c8( |
  c1) |
  c4 c8 c8 r4 c8 c8( |
  c2.) r8 r8 |
  c8 c8 c8 c8 r8 c4 c8 |
  r8 c4 c8( c2 |
  c2) r2 |
  c8 c8 c8 c8 r8 c4.( |
  c1) |
  c8 c8 c8 c8 r8 c4.( |
  c1) |
}

lyricOneZero = \lyricmode {
  %|
  %|
  %|
  %|
  Hva -- la ti za %|
  križ tvoj, __ %|
  cije -- nu što si %|
  pla -- ti -- %|
  o. Grijeh i sram si %|
  po -- ni -- o __ zbog %|
  lju -- ba -- vi __ i %|
  mi -- lost da -- o mi. __ %|
  Hva -- la ti za %|
  lju -- bav, __ %|
  dla -- no -- ve pro -- %|
  bo -- de -- %|
  ne. U kr -- vi me o -- %|
  pe -- ri -- sveg, __ sad %|
  sve što __ znam __ tvoj je %|
  to -- pli za -- gr -- ljaj. __ %|
  %|
  Ja -- nje do -- stoj -- no; __ %|
  na %|
  tro -- nu ne -- bes -- kom, __ %|
  %|
  ve -- li -- čan -- stvom o -- %|
  kru -- njen %|
  vje -- čno vla -- da On. __ %|
  %|
  Uz -- vi -- šen __ nad svim, __ %|
  %|
  I -- sus, Bo -- žji Sin. __ %|
  %|
  Mi -- lje -- nik ne -- ba ra -- %|
  za -- pet, __ %|
  %|
  Ja -- nje do -- stoj -- no, __ %|
  %|
  Ja -- nje do -- stoj -- no. __ %|
  %|
}

alignerOneOne = \relative {
  r2 r8 r8 r8 r8 |
  r1 |
  r2 r8 r8 r8 r8 |
  r1 |
  r2 c8 c8 c8 c8 |
  c2 c2( |
  c2) c8 c8 c8 c8 |
  c2 c2 |
  c2 c8 c8 c8 c8 |
  c8. c16( c8) c8( c4.) c8 |
  c8. c16( c8) c8( c4.) c8 |
  c4 c8 c8 r8 c4 c8( |
  c2) c8 c8 c8 c8 |
  c2 c2( |
  c2) c8 c8 c8 c8 |
  c2 c2 |
  c4.( c8) c8 c8 c8 c8 |
  c8. c16( c8) c8( c4.) c8 |
  c8. c16( c8) c8( c4) c8 c8 |
  c4 c8 c8( c4) c8 c8( |
  c1) |
  c4 c8 c8( c4) c8 c8( |
  c2.) r8 r8 |
  c4 c8 c8( c4) c8 c8( |
  c1) |
  c4 c8 c8( c4) c8 c8 |
  r8 c4 c8( c4.) c8 |
  c4 c8 c8 r4 c8 c8( |
  c1) |
  c4 c8 c8 r4 c8 c8( |
  c1) |
  c4 c8 c8( c4) c8 c8( |
  c2.) r8 c8 |
  c8 c8 c8 c8 r8 c4 c8 |
  r8 c4 c8( c2 |
  c2) r2 |
  c8 c8 c8 c8( c8) c4.( |
  c1) |
  c8 c8 c8 c8( c8) c4.( |
  c1) |
}

lyricOneOne = \lyricmode {
  %|
  %|
  %|
  %|
  Thank you for the %|
  cross Lord __ %|
  Thank you for the %|
  price You %|
  paid Bea -- ring all my %|
  sin and __ shame __ In %|
  love You __ came __ And %|
  gave a -- ma -- zing grace __ %|
  Thank you for this %|
  love Lord __ %|
  Thank you for the %|
  nail pierced %|
  hands __ Washed me in Your %|
  clean -- sing __ flow __ Now %|
  all I __ know __ Your for -- %|
  give -- ness and __ em -- brace __ %|
  %|
  Wor -- thy is __ the Lamb __ %|
  %|
  Sea -- ted on __ the throne __ %|
  %|
  Crown You now __ with ma -- %|
  ny crowns __ You %|
  reign vic -- to -- ri -- ous __ %|
  %|
  High and lif -- ted up __ %|
  %|
  Je -- sus Son __ of God __ %|
  The %|
  Dar -- ling of Hea -- ven cru -- %|
  ci -- fied __ %|
  %|
  Wor -- thy is the __ Lamb __ %|
  %|
  Wor -- thy is the __ Lamb __ %|
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