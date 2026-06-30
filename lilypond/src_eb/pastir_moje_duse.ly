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
  titlex = "Shepherd Of My Soul (Eb)"
  composer = "Rivers & Robots"
  style = ""
  broj = "5"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  system-system-spacing.padding = #2.11
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #8
}

staffOne = \relative c' {
  \key as \major
  \time 4/4
  %\tempo 4 = 90
  \markMoj
  as''8. b16 ~b16 c8. b8. as16 ~as16 f8. |
  es4 r4 as4 g4 |
  f8. f16 ~f16 g8. f8. es16 ~es16 des8. |
  c4 r4 r2 | \break
  as'8. b16 ~b16 c8. b8. as16 ~as16 f8. |
  es4 r4 as4 g4 |
  f8. f16 ~f16 g8. f8. es16 ~es16 des8. |
  c4 r4 r2 \bar "||" | \break
  \markMoj
  as'4 (g8 f8 es8. )c16 ~c8 b8 |
  r8 b8 b8 b8 b8 c8 b8 as8 |
  as'4 (g8 f8 es8. c16 ~c8 )b8 |
  r2 es8 f8 as8 c8 | \break
  b4 as8 es8 f8. c'16 ~c8 b8 ~|
  b8 as4. es8 f8 as8 c8 |
  b8 as8 f8 es8 f8. c'16 ~c8 b8 ~|
  b8 as4 (g8 ~g2 )\bar "||" | \break
  \markMoj
  r8 as8 g8 f8 c8 es8 f4 |
  r8 as8 g8 f8 es8 f8 c4 |
  r8 as'8 g8 f8 c8 es8 f4 |
  r8 as8 g8 f8 es8 f8 c8. b16 | \break
  b4 as4 b8 c8 es8 c8 |
  b4 as4 b8 c8 es8 c8 |
  b4 as4 b8 c8 es8 c8 |
  b4 c4 es8. f16 ~f8 f8 |
}

harmonyOne = \chordmode  {
  des1 |
  as1/c |
  b1:m7 |
  f2:m as2/es |
  des1 |
  as1/c |
  b1:m7 |
  f2:m as2/es |
  b1:m7 |
  as2/c es2 |
  b1:m7 |
  as2/c es2 |
  b1:m7 |
  as2/c es2 |
  b1:m7 |
  as2/c es2 |
  f1:m |
  f2:m7/es des2:maj7 |
  f1:m |
  f2:m7/es des2:maj7 |
  s1 |
  f1:m7/es |
  f1:m |
  es1/g |
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
