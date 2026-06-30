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
  title = "BEZ LJUBAVI"
  titlex = "Without Love (Bb)"
  composer = "Jonathan Ogden"
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
  \key e \major
  \time 4/4
  %\tempo 4 = 95
  \markMoj
  h'8. gis16 ~gis16 h8. a8. fis16 ~fis16 a8. |
  gis8. e16 ~e16 gis8. fis4 r4 |
  h8. gis16 ~gis16 h8. a8. fis16 ~fis16 a8. | \break
  gis8. e16 ~e16 gis8. fis4 r4 |
  cis8. dis16 ~dis16 e8. dis8. h16 ~h16 cis8. |
  gis'8. a16 ~a16 gis8. fis2 | \break
  r1 |
  r1 \bar ":|." | \break
  \markMojPonRight
  e'8. dis16 ~dis16 cis8. h8. gis16 ~gis8 fis8 ~|
  fis8 e4. r4 r8 e8 |
  e'8. dis16 ~dis16 cis8. h8. gis16 ~gis8 cis8 ~|
  cis2 r2 |
  r1 \bar "||" | \break
  \bar ".|:" \markMojPonn
  h8. gis16 ~gis16 h8. a8. fis16 ~fis16 a8. |
  gis8. e16 ~e16 gis8. fis4 r4 |
  h8. gis16 ~gis16 h8. a8. fis16 ~fis16 a8. | \break
  gis8. e16 ~e16 gis8. fis4 r4 |
  cis8. dis16 ~dis16 e8. dis8. h16 ~h16 cis8. |
  gis'8. a16 ~a16 gis8. fis2 | \break
  r1 |
  r1 | \break
  \markMojPonnn
  e'8. dis16 ~dis16 cis8. h8. gis16 ~gis8 fis8 ~|
  fis8 e4. r4 r8 e8 |
  e'8. dis16 ~dis16 cis8. h8. gis16 ~gis8 cis8 ~|
  cis2 r2 | \break
  e8. dis16 ~dis16 cis8. h8. gis16 ~gis8 fis8 ~|
  fis8 fis8 r4 r8 r16 h,16 ~h16 gis'8. |
  gis8. h,16 ~h16 gis'8. gis8 fis16 e16 ~e16 fis8. ~| \break
  fis4 r4 r8 r16 h,16 ~h16 gis'8. |
  gis8. h,16 ~h16 gis'8. gis8 fis16 e16 ~e16 fis8. ~|
  fis4 r4 r2 \bar ":|." |
}

harmonyOne = \chordmode  {
  e2 fis2:m7/e |
  e2 h2/e |
  e2 fis2:m7/e |
  e2 h2/e |
  a32 s16. s4. h4.:7/a s8 |
  s64 cis32.:m7 s8. s4 h4. s8 |
  e2 fis2:m7/e |
  e2 h2/e |
  cis2:m7 gis2:m7 |
  fis1:m7 |
  cis2:m7 gis2:m7 |
  a1 |
  a1:m |
  e2 fis2:m7/e |
  e2 h2/e |
  e2 fis2:m7/e |
  e2 h2/e |
  a32 s16. s4. h4.:7/a s8 |
  s64 cis32.:m7 s8. s4 h4. s8 |
  e2 fis2:m7/e |
  e2 h2/e |
  cis2:m7 gis2:m7 |
  fis1:m7 |
  cis2:m7 gis2:m7 |
  a1 |
  cis2:m7 gis2:m7 |
  fis1:m7 |
  e2 fis2:m7 |
  s1 |
  e2 fis2:m7 |
  s1 |
  \bar "|."
}

alignerOneZero = \relative {
  c8. c16( c16) c8. c8. c16 r16 c8. |
  c8. c16( c16) c8. c4 r4 |
  c8. c16( c16) c8. c8. c16( c16) c8. |
  c8. c16 r16 c8. c4 r4 |
  c8. c16 r16 c8. c8. c16 r16 c8. |
  c8. c16 r16 c8. c2 |
  r1 |
  r1 |
  c8. c16( c16) c8. c8. c16( c8) c8( |
  c8) c4. r4 r8 c8 |
  c8. c16( c16) c8. c8. c16 r8 c8( |
  c2) r2 |
  r1 |
  c8. c16 r16 c8. c8. c16( c16) c8. |
  c8. c16 r16 c8. c4 r4 |
  c8. c16( c16) c8. c8. c16 r16 c8. |
  c8. c16 r16 c8. c4 r4 |
  c8. c16 r16 c8. c8. c16 r16 c8. |
  c8. c16 r16 c8. c2 |
  r1 |
  r1 |
  c8. c16( c16) c8. c8. c16( c8) c8( |
  c8) c4. r4 r8 c8 |
  c8. c16( c16) c8. c8. c16 r8 c8( |
  c2) r2 |
  c8. c16( c16) c8. c8. c16 r8 c8( |
  c8 c8) r4 r8 r16 c16 r16 c8. |
  c8. c16 r16 c8. c8 c16 c16( c16) c8.( |
  c4) r4 r8 r16 c16 r16 c8. |
  c8. c16 r16 c8. c8 c16 c16( c16) c8.( |
  c4) r4 r2 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Lju -- di __ i an -- đe -- la %|
  je -- zik __ da znam; %|
  taj -- ne __ i zna -- nje __ i %|
  pro -- ro -- štva dar, %|
  i -- pak, ja ni -- šta sam %|
  bez lju -- ba -- vi. %|
  %|
  %|
  U -- či __ me lju -- bit' __ ko __ %|
  Ti, u %|
  vje -- ri __ i i -- sti -- ni. __ %|
  %|
  %|
  \set stanza = "2." Pro -- ro -- štva blije -- de __ i %|
  je -- zi -- ci svi, %|
  zna -- nje __ će pre -- sta -- ti %|
  i ne -- sta -- ti; %|
  sve mi je u -- za -- lud %|
  bez lju -- ba -- vi. %|
  %|
  %|
  U -- či __ me lju -- bit' __ ko __ %|
  Ti, u %|
  vje -- ri __ i is -- ti -- ni, __ %|
  %|
  krv -- lju __ is -- kup -- lje -- ni. __ %|
  Jer bez %|
  lju -- ba -- vi niš -- ta je __ sve; __ %|
  Jer bez %|
  lju -- ba -- vi niš -- ta je __ sve. __ %|
  %|
}

alignerOneOne = \relative {
  c8. c16 r16 c8. c8. c16 r16 c8. |
  c8. c16 r16 c8. c4 r4 |
  c8. c16 r16 c8. c8. c16 r16 c8. |
  c8. c16 r16 c8. c4 r4 |
  c8. c16 r16 c8. c8. c16 r16 c8. |
  c8. c16 r16 c8. c2 |
  r1 |
  r1 |
  r8. r16 r16 r8. r8. r16 r8 r8 |
  r8 r4. r4 r8 r8 |
  r8. r16 r16 r8. r8. r16 r8 r8 |
  r2 r2 |
  r1 |
  c8. c16 r16 c8. c8. c16 r16 c8. |
  c8. c16 r16 c8. c4 r4 |
  c8. c16( c16) c8. c8. c16( c16) c8. |
  c8. c16 r16 c8. c4 r4 |
  c8. c16 r16 c8. c8. c16 r16 c8. |
  c8. c16 r16 c8. c2 |
  r1 |
  r1 |
  c8. c16 r16 c8. c8. c16 r8 c8( |
  c8) c4. r4 r8 r8 |
  c8. c16 r16 c8. c8. c16 r8 c8( |
  c2) r2 |
  c8. c16( c16) c8. c8. c16 r8 c8 |
  r8 c8 r4 r8 r16 c16 r16 c8. |
  c8. c16 r16 c8. c8 c16 c16( c16) c8.( |
  c4) r4 r8 r16 c16 r16 c8. |
  c8. c16 r16 c8. c8 c16 c16( c16) c8.( |
  c4) r4 r2 |
}

lyricOneOne = \lyricmode {
  Bu -- dem li hra -- bar kroz %|
  ne -- vo -- lje sve, %|
  vje -- rom da pre -- mje -- štam %|
  i pla -- ni -- ne: %|
  sve mi je u -- za -- lud %|
  bez lju -- ba -- vi. %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  Lju -- bav se ne hva -- sta %|
  po -- no -- si -- to, %|
  pra -- šta __ i tr -- pi __ sve, %|
  do -- bro -- sti -- vo; %|
  ni -- je raz -- draž -- lji -- va, %|
  ne pam -- ti zlo. %|
  %|
  %|
  Ne -- daj da iz -- gu -- bim __ %|
  se, %|
  u -- mo -- ran, Gos -- po -- de, __ %|
  %|
  du -- šu __ Ti sad pre -- da -- %|
  jem. Jer bez %|
  lju -- ba -- vi niš -- ta je __ sve; __ %|
  Jer bez %|
  lju -- ba -- vi niš -- ta je __ sve. __ %|
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
