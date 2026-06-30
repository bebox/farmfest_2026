\version "2.24.4"
\include "deutsch.ly"
jazzChords = { \semiGermanChords }
aFourR = {}
\include "include.ily"
%markMoj = #(define-music-function (letter) (string?) #{ \mark \markup { \box \bold #letter } #})
%\pointAndClickOff

\layout {
  indent = 0
}

\header {
  title = "IME ISUS"
  composer = "Danko Tomanić"
  titlex = "Farmfest 2025"
  style = ""
  broj = "3"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourR
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #8
}

staffOne = \relative c' {
  \key d \major
  \time 4/4
  %\tempo 4 = 128
  \partial 4
  \clef treble
  fis8 a8 \bar "||" |
  \markMoj
  h8 a8 ~a4 h8 a8 ~a4 |
  h8 fis8 ~fis2 h8 h8 |
  h8 a8 ~a2 a8 g8 |
  g8 fis8 ~fis2 fis8 a8 | \break
  a8 g8 ~g2 g8 fis8 |
  fis8 e4. (~e8 e8 )e8 d8 |
  fis8 e8 ~e4 e4 d8 fis8 ~|
  fis8 e8 ~e4 fis4 fis4 |
  d4 h2 r4 |
  r2 d'4 d4 \bar "||" | \break
  \markMoj
  d4 cis4 cis8 h4 a8 ~|
  a2 r4 cis8 cis8 |
  cis4 h4 h8 a4 g8 ~|
  g4 r4 h4 a4 |
  cis4 h2 r4 |
  r2 fis4 d4 \bar "||" | \break
  \markMoj
  e4 (fis8 )e8 ~e4 r4 |
  r2 fis4 fis4 |
  d4 h2 r4 |
  \partial 2.
  r2 r4 \bar "|." |
}

harmonyOne = \chordmode  {
  s4 |
  h1:m |
  s1 |
  fis1:m |
  s1 |
  e1:m |
  s1 |
  a1 |
  s2 a4 fis4:7/ais |
  h1:m |
  s1 |
  a1 |
  s1 |
  g1 |
  s1 |
  h1:m |
  s1 |
  a1 |
  s1 |
  h1:m |
  s2. |
  \bar "|."
}

alignerOneZero = \relative {
  c8 c8 |
  c8 c8( c4) c8 c8( c4) |
  c8 c8( c2) c8 c8 |
  c8 c8( c2) c8 c8 |
  c8 c8( c2) c8 c8 |
  c8 c8 r2 c8 c8 |
  c8 c4.( c8 c8) c8 c8 |
  c8 c8( c4) c4 c8 c8 |
  r8 c8 r4 c4 c4 |
  c4 c2 r4 |
  r2 c4 c4 |
  c4 c4 c8 c4 c8( |
  c2) r4 c8 c8 |
  c4 c4 c8 c4 c8( |
  c4) r4 c4 c4 |
  c4 c2 r4 |
  r2 c4 c4 |
  c4 r8 c8( c4) r4 |
  r2 c4 c4 |
  c4 c2 r4 |
  r2 r4 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Tko to %|
  mo -- že __ ži -- vot __ %|
  da -- ti, __ grije -- ha %|
  lan -- ce __ po -- ki -- %|
  da -- ti, __ sve o -- %|
  kre -- nu -- ti u %|
  tre -- nu, __ da do -- %|
  ži -- viš __ no -- vu mje -- %|
  nu? I -- me %|
  I -- sus. %|
  I -- me %|
  I -- sus to je to, __ %|
  On će %|
  o -- da -- gna -- ti zlo. __ %|
  I -- me %|
  I -- sus. %|
  I -- me %|
  I -- sus, __ %|
  i -- me %|
  I -- sus. %|
  %|
}

alignerOneOne = \relative {
  c8 c8 |
  c8 c8 r4 c8 c8( c4) |
  c8 c8( c2) c8 c8 |
  c8 c8( c2) c8 c8 |
  c8 c8( c2) c8 c8 |
  c8 c8( c2) c8 c8 |
  c8 c4.( c8 c8) c8 c8 |
  c8 c8( c4) c4 c8 c8 |
  r8 c8 r4 c4 c4 |
  c4 c2 r4 |
  r2 c4 c4 |
  c4 c4 c8 c4 c8( |
  c2) r4 c8 c8 |
  c4 c4 c8 c4 c8( |
  c4) r4 c4 c4 |
  c4 c2 r4 |
  r2 r4 r4 |
  r4 r8 r8 r4 r4 |
  r2 r4 r4 |
  r4 r2 r4 |
  r2 r4 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." On me %|
  sna -- gom svo -- jom __ %|
  di -- že, __ sva -- kog %|
  tre -- na __ sve smo %|
  bli -- že; __ i ja %|
  Nje -- mu __ i On %|
  me -- ni. __ Haj -- de %|
  i ti __ list o -- kre -- %|
  ni. I -- me %|
  I -- sus. %|
  I -- me %|
  I -- sus On je taj, __ %|
  ne -- ma %|
  stra -- ha ne -- ma kraj. __ %|
  I -- me %|
  I -- sus. %|
  %|
  %|
  %|
  %|
  %|
}

alignerOneTwo = \relative {
  c8 c8 |
  c8 c8( c4) c8 c8( c4) |
  c8 c8( c2) c8 c8 |
  c8 c8( c2) c8 c8 |
  c8 c8( c2) c8 c8 |
  c8 c8( c2) c8 c8 |
  c8 c4.( c8) c8 c8 c8 |
  c8 c8( c4) c4 c8 c8 |
  r8 c8 r4 c4 c4 |
  c4 c2 r4 |
  r2 c4 c4 |
  c4 c4 c8 c4 c8( |
  c2) r4 c8 c8 |
  c4 c4 c8 c4 c8( |
  c4) r4 c4 c4 |
  c4 c2 r4 |
  r2 r4 r4 |
  r4 r8 r8 r4 r4 |
  r2 r4 r4 |
  r4 r2 r4 |
  r2 r4 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Sna -- gom %|
  svo -- je __ rije -- či __ %|
  lije -- či. __ Haj -- te %|
  "k Nje" -- mu, __ što vas %|
  prije -- či? __ Za sve %|
  nas On __ mje -- sta %|
  i -- ma __ u svo -- jim %|
  mi -- lim __ sta -- no -- vi -- %|
  ma. I -- me %|
  I -- sus. %|
  I -- me %|
  I -- sus On je taj, __ %|
  daj ga %|
  ba -- rem po -- gle -- daj. __ %|
  I -- me %|
  I -- sus. %|
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