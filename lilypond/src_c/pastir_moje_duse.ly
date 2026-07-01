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
  titlex = "Shepherd Of My Soul"
  composer = "Rivers & Robots"
  style = ""
  broj = "5"
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
  \time 4/4
  %\tempo 4 = 90
  \markMoj
  h'8. cis16 ~cis16 dis8. cis8. h16 ~h16 gis8. |
  fis4 r4 h4 ais4 |
  gis8. gis16 ~gis16 ais8. gis8. fis16 ~fis16 e8. |
  dis4 r4 r2 | \break
  h'8. cis16 ~cis16 dis8. cis8. h16 ~h16 gis8. |
  fis4 r4 h4 ais4 |
  gis8. gis16 ~gis16 ais8. gis8. fis16 ~fis16 e8. |
  dis4 r4 r2 \bar "||" | \break
  \markMoj
  h'4 (ais8 gis8 fis8. )dis16 ~dis8 cis8 |
  r8 cis8 cis8 cis8 cis8 dis8 cis8 h8 |
  h'4 (ais8 gis8 fis8. dis16 ~dis8 )cis8 |
  r2 fis8 gis8 h8 dis8 | \break
  cis4 h8 fis8 gis8. dis'16 ~dis8 cis8 ~|
  cis8 h4. fis8 gis8 h8 dis8 |
  cis8 h8 gis8 fis8 gis8. dis'16 ~dis8 cis8 ~|
  cis8 h4 (ais8 ~ais2 )\bar "||" | \break
  \markMoj
  r8 h8 ais8 gis8 dis8 fis8 gis4 |
  r8 h8 ais8 gis8 fis8 gis8 dis4 |
  r8 h'8 ais8 gis8 dis8 fis8 gis4 |
  r8 h8 ais8 gis8 fis8 gis8 dis8. cis16 | \break
  cis4 h4 cis8 dis8 fis8 dis8 |
  cis4 h4 cis8 dis8 fis8 dis8 |
  cis4 h4 cis8 dis8 fis8 dis8 |
  cis4 dis4 fis8. gis16 ~gis8 gis8 |
}

harmonyOne = \chordmode  {
  e1 |
  h1/dis |
  cis1:m7 |
  gis2:m h2/fis |
  e1 |
  h1/dis |
  cis1:m7 |
  gis2:m h2/fis |
  cis1:m7 |
  h2/dis fis2 |
  cis1:m7 |
  h2/dis fis2 |
  cis1:m7 |
  h2/dis fis2 |
  cis1:m7 |
  h2/dis fis2 |
  gis1:m |
  gis2:m7/fis e2:maj7 |
  gis1:m |
  gis2:m7/fis e2:maj7 |
  s1 |
  gis1:m7/fis |
  gis1:m |
  fis1/ais |
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