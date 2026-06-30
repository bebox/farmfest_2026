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
  titlex = "Without Love"
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
  \key d \major
  \time 4/4
  %\tempo 4 = 95
  \markMoj
  a'8. fis16 ~fis16 a8. g8. e16 ~e16 g8. |
  fis8. d16 ~d16 fis8. e4 r4 |
  a8. fis16 ~fis16 a8. g8. e16 ~e16 g8. | \break
  fis8. d16 ~d16 fis8. e4 r4 |
  h8. cis16 ~cis16 d8. cis8. a16 ~a16 h8. |
  fis'8. g16 ~g16 fis8. e2 | \break
  r1 |
  r1 \bar ":|." | \break
  \markMojPonRight
  d'8. cis16 ~cis16 h8. a8. fis16 ~fis8 e8 ~|
  e8 d4. r4 r8 d8 |
  d'8. cis16 ~cis16 h8. a8. fis16 ~fis8 h8 ~|
  h2 r2 |
  r1 \bar "||" | \break
  \bar ".|:" \markMojPonn
  a8. fis16 ~fis16 a8. g8. e16 ~e16 g8. |
  fis8. d16 ~d16 fis8. e4 r4 |
  a8. fis16 ~fis16 a8. g8. e16 ~e16 g8. | \break
  fis8. d16 ~d16 fis8. e4 r4 |
  h8. cis16 ~cis16 d8. cis8. a16 ~a16 h8. |
  fis'8. g16 ~g16 fis8. e2 | \break
  r1 |
  r1 | \break
  \markMojPonnn
  d'8. cis16 ~cis16 h8. a8. fis16 ~fis8 e8 ~|
  e8 d4. r4 r8 d8 |
  d'8. cis16 ~cis16 h8. a8. fis16 ~fis8 h8 ~|
  h2 r2 | \break
  d8. cis16 ~cis16 h8. a8. fis16 ~fis8 e8 ~|
  e8 e8 r4 r8 r16 a,16 ~a16 fis'8. |
  fis8. a,16 ~a16 fis'8. fis8 e16 d16 ~d16 e8. ~| \break
  e4 r4 r8 r16 a,16 ~a16 fis'8. |
  fis8. a,16 ~a16 fis'8. fis8 e16 d16 ~d16 e8. ~|
  e4 r4 r2 \bar ":|." |
}

harmonyOne = \chordmode  {
  d2 e2:m7/d |
  d2 a2/d |
  d2 e2:m7/d |
  d2 a2/d |
  g32 s16. s4. a4.:7/g s8 |
  s64 h32.:m7 s8. s4 a4. s8 |
  d2 e2:m7/d |
  d2 a2/d |
  h2:m7 fis2:m7 |
  e1:m7 |
  h2:m7 fis2:m7 |
  g1 |
  g1:m |
  d2 e2:m7/d |
  d2 a2/d |
  d2 e2:m7/d |
  d2 a2/d |
  g32 s16. s4. a4.:7/g s8 |
  s64 h32.:m7 s8. s4 a4. s8 |
  d2 e2:m7/d |
  d2 a2/d |
  h2:m7 fis2:m7 |
  e1:m7 |
  h2:m7 fis2:m7 |
  g1 |
  h2:m7 fis2:m7 |
  e1:m7 |
  d2 e2:m7 |
  s1 |
  d2 e2:m7 |
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