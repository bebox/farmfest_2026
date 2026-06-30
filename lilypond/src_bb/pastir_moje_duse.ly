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
  title = "PASTIR MOJE DUŠE"
  titlex = "Shepherd Of My Soul (Bb)"
  composer = "Rivers & Robots"
  style = ""
  broj = "5"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  system-system-spacing.padding = #2.0
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #8
  %system-system-spacing.basic-distance = #5
  %line-width = 170\mm % adjust margins
}

staffOne = \relative c' {
  \key cis \major
  \time 4/4
  %\tempo 4 = 90
  \markMoj
  cis'8. dis16 ~dis16 eis8. dis8. cis16 ~cis16 ais8. |
  gis4 r4 cis4 his4 |
  ais8. ais16 ~ais16 his8. ais8. gis16 ~gis16 fis8. |
  eis4 r4 r2 | \break
  cis'8. dis16 ~dis16 eis8. dis8. cis16 ~cis16 ais8. |
  gis4 r4 cis4 his4 |
  ais8. ais16 ~ais16 his8. ais8. gis16 ~gis16 fis8. |
  eis4 r4 r2 \bar "||" | \break
  \markMoj
  cis'4 (his8 ais8 gis8. )eis16 ~eis8 dis8 |
  r8 dis8 dis8 dis8 dis8 eis8 dis8 cis8 | \noBreak
  cis'4 (his8 ais8 gis8. eis16 ~eis8 )dis8 |
  r2 gis8 ais8 cis8 eis8 | \break
  dis4 cis8 gis8 ais8. eis'16 ~eis8 dis8 ~|
  dis8 cis4. gis8 ais8 cis8 eis8 | \noBreak
  dis8 cis8 ais8 gis8 ais8. eis'16 ~eis8 dis8 ~|
  dis8 cis4 (his8 ~his2 )\bar "||" | \break
  \markMoj
  r8 cis8 his8 ais8 eis8 gis8 ais4 |
  r8 cis8 his8 ais8 gis8 ais8 eis4 |
  r8 cis'8 his8 ais8 eis8 gis8 ais4 |
  r8 cis8 his8 ais8 gis8 ais8 eis8. dis16 | \break
  dis4 cis4 dis8 eis8 gis8 eis8 |
  dis4 cis4 dis8 eis8 gis8 eis8 |
  dis4 cis4 dis8 eis8 gis8 eis8 |
  dis4 eis4 gis8. ais16 ~ais8 ais8 |
}

harmonyOne = \chordmode  {
  fis1 |
  cis1/eis |
  dis1:m7 |
  ais2:m cis2/gis |
  fis1 |
  cis1/eis |
  dis1:m7 |
  ais2:m cis2/gis |
  dis1:m7 |
  cis2/eis gis2 |
  dis1:m7 |
  cis2/eis gis2 |
  dis1:m7 |
  cis2/eis gis2 |
  dis1:m7 |
  cis2/eis gis2 |
  ais1:m |
  ais2:m7/gis fis2:maj7 |
  ais1:m |
  ais2:m7/gis fis2:maj7 |
  s1 |
  ais1:m7/gis |
  ais1:m |
  gis1/his |
  \bar "|."
}

alignerOneZero = \relative {
  c8. c16 r16 c8. c8. c16 r16 c8. |
  c4 r4 c4 c4 |
  c8. c16 r16 c8. c8. c16 r16 c8. |
  c4 r4 r2 |
  c8. c16 r16 c8. c8. c16 r16 c8. |
  c4 r4 c4 c4 |
  c8. c16 r16 c8. c8. c16 r16 c8. |
  c4 r4 r2 |
  c4 r8 r8 r8. c16 r8 c8 |
  r8 c8 c8 c8 c8 c8 c8 c8 |
  c4 r8 r8 r8. r16 r8 c8 |
  r2 c8 c8 c8 c8 |
  c4 c8 c8 c8. c16( c8) c8 |
  r8 c4. c8 c8 c8 c8 |
  c8 c8 c8 c8 c8. c16 r8 c8 |
  r8 c4( c8 c2) |
  r8 c8 c8 c8 c8 c8 c4 |
  r8 c8 c8 c8 c8 c8 c4 |
  r8 c8 c8 c8 c8 c8 c4 |
  r8 c8 c8 c8 c8 c8 c8. c16 |
  c4 c4 c8 c8 c8 c8 |
  c4 c4 c8 c8 c8 c8 |
  c4 c4 c8 c8 c8 c8 |
  c4 c4 c8. c16( c8) c8 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Vla -- da -- ru pla -- ni -- na %|
  i mo -- ra, %|
  pri -- pre -- maš put za me -- %|
  ne. %|
  Bo -- že svih raz -- dob -- lja %|
  i ne -- ba, %|
  u -- vijek si ču -- va -- o %|
  me. %|
  Go -- spo -- de, %|
  Ti bu -- di pas -- tir mo -- je %|
  du -- še. %|
  Pre -- da -- jem Ti %|
  pla -- no -- ve, svo -- ja __ pra -- %|
  va, pre -- puš -- tam kon -- %|
  tro -- lu pre -- da -- nog ži -- vo -- %|
  ta. __ %|
  Vje -- ran si tje -- ši -- telj, %|
  i moj iz -- ba -- vi -- telj. %|
  Stije -- na si si -- gur -- na, %|
  u vije -- ke vje -- ko -- va. Ti %|
  vo -- di me na iz -- vor, %|
  vo -- di kroz do -- li -- ne, %|
  vo -- di me u mu -- drost. %|
  Pas -- tir du -- še __ si. %|
}

alignerOneOne = \relative {
  c8. c16 r16 c8. c8. c16 r16 c8. |
  c4 r4 c4 c4 |
  c8. c16 r16 c8. c8. c16 r16 c8. |
  c4 r4 r2 |
  c8. c16 r16 c8. c8. c16 r16 c8. |
  c4 r4 c4 c4 |
  c8. c16 r16 c8. c8. c16 r16 c8. |
  c4 r4 r2 |
  r4 r8 r8 r8. r16 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r4 r8 r8 r8. r16 r8 r8 |
  r2 r8 r8 r8 r8 |
  r4 r8 r8 r8. r16 r8 r8 |
  r8 r4. r8 r8 r8 r8 |
  r8 r8 r8 r8 r8. r16 r8 r8 |
  r8 r4 r8 r2 |
  r8 r8 r8 r8 r8 r8 r4 |
  r8 r8 r8 r8 r8 r8 r4 |
  r8 r8 r8 r8 r8 r8 r4 |
  r8 r8 r8 r8 r8 r8 r8. r16 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8 r8 r8 r8 |
  r4 r4 r8. r16 r8 r8 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Vje -- ru -- jem O -- no -- me %|
  tko zvijez -- de %|
  i sun -- ce stvo -- ri -- o %|
  je. %|
  Mi -- los -- tiv, bes -- kraj -- no %|
  si, u -- vijek %|
  vje -- ran i mu -- dar si %|
  Ti. %|
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
