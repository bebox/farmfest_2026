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
  title = "HALELUJA PRIČA"
  composer = "John Van Deusen"
  titlex = "Hallelujah Story (Bb)"
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
  \time 4/4
  %\tempo 4 = 130
  r2 r4 h'4 \bar "||" |
  \markMoj
  a4 fis4 d4 e4 ~|
  e2 e8 fis8 e8 d8 |
  e2 e8 fis8 e8 d8 |
  h2. h'4 |
  a4 fis4 d4 e4 ~|
  e2 g8 fis8 e8 d8 |
  d4. e8 ~e4 h4 ~|
  h8 d4. a4 h'4 |
  \bar ".|:" \markMoj
  a4 fis4 d4 e4 ~|
  e4. a,8 e'8 fis8 e8 d8 |
  e4. a,8 e'8 fis8 e8 d8 |
  h2. h'4 |
  a4 fis4 d4 e4 ~|
  e4 a,8 a8 g'8 fis8 e8 d8 |
  d1 |
  r2 r4 d'4 \bar ":|." |
  \bar ".|:" \markMoj
  d4 a4 d4 e4 ~|
  e2 e8 fis8 e8 d8 |
  e2 e8 fis8 e8 d8 |
  h2. d4 |
  d4 a4 d4 e4 ~|
  e4. d8 g8 fis8 e8 d8 |
  d1 \bar ":|." |
  \bar ".|:" \markMoj
  d2 d4. a8 |
  d8 d4 d8 ~d8 d4 d8 (~|
  d8 e8 )e2. |
  r1 |
  a8 a4 a8 ~a8 fis4 fis8 ~|
  fis8 fis4 g8 ~g8 fis4 fis8 (~|
  fis8 e8 )e2. |
  r1 \bar ":|." |
}

harmonyOne = \chordmode  {
  s1 |
  c1 |
  g1 |
  d1:m |
  f1 |
  c1 |
  g1 |
  f1 |
  s1 |
  c1 |
  g1 |
  d1:m |
  f1 |
  c1 |
  g1 |
  f1 |
  s1 |
  c1 |
  g1 |
  d1:m |
  f1 |
  c1 |
  g1 |
  f1 |
  s1 |
  a1:m |
  g1 |
  s1 |
  f1 |
  c1 |
  g1 |
  s1 |
  \bar "|."
}

alignerOneZero = \relative {
  r2 r4 r4 |
  r4 r4 r4 r4 |
  r2 r8 r8 r8 r8 |
  r2 r8 r8 r8 r8 |
  r2. r4 |
  r4 r4 r4 r4 |
  r2 r8 r8 r8 r8 |
  r4. r8 r4 r4 |
  r8 r4. r4 c4 |
  c4 c4 c4 c4( |
  c4. c8) c8 c8 c8 c8 |
  c4.( c8) c8 c8 c8 c8 |
  c2. c4 |
  c4 c4 c4 c4( |
  c4) c8 c8 c8 c8 c8 c8 |
  c1 |
  r2 r4 c4 |
  c4 c4 c4 c4( |
  c2) c8 c8 c8 c8 |
  c2 c8 c8 c8 c8 |
  c2. c4 |
  c4 c4 c4 c4( |
  c4. c8) c8 c8 c8 c8 |
  c1 |
  c2 c4. c8 |
  c8 c4 c8 r8 c4 c8 |
  r8 r8 c2. |
  r1 |
  c8 c4 c8( c8) c4 c8 |
  r8 c4 c8 r8 c4 c8 |
  r8 r8 c2. |
  r1 |
}

lyricOneZero = \lyricmode {
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  Oh %|
  Yah -- weh, our King __ %|
  Spoke and there was %|
  life __ giv -- ing ev -- ery -- %|
  thing That %|
  we may know Love __ %|
  And the beau -- ty of Your %|
  name %|
  And %|
  yet in Your grace __ %|
  Walked a sol -- emn %|
  path wear -- ing our dis -- %|
  grace Took %|
  sin on the cross __ %|
  Tri -- umph in the %|
  loss %|
  This is the %|
  hal -- le -- lu -- jah sto -- %|
  ry %|
  %|
  On -- ly You __ are ho -- %|
  ly, ho -- ly, ho -- %|
  ly %|
  %|
}

alignerOneOne = \relative {
  r2 r4 r4 |
  r4 r4 r4 r4 |
  r2 r8 r8 r8 r8 |
  r2 r8 r8 r8 r8 |
  r2. r4 |
  r4 r4 r4 r4 |
  r2 r8 r8 r8 r8 |
  r4. r8 r4 r4 |
  r8 r4. r4 c4 |
  c4 c4 c4 c4( |
  c4. c8) c8 c8 c8 c8 |
  c4. c8 c8 c8 c8 c8 |
  c2. c4 |
  c4 c4 c4 c4( |
  c4 c8 c8) c8 c8 c8 c8 |
  c1 |
  r2 r4 c4 |
  c4 c4 c4 c4( |
  c2) c8 c8 c8 c8 |
  c2 c8 c8 c8 c8 |
  c2. c4 |
  c4 c4 c4 c4( |
  c4. c8) c8 c8 c8 c8 |
  c1 |
  r2 r4. r8 |
  r8 r4 r8 r8 r4 r8 |
  r8 r8 r2. |
  r1 |
  r8 r4 r8 r8 r4 r8 |
  r8 r4 r8 r8 r4 r8 |
  r8 r8 r2. |
  r1 |
}

lyricOneOne = \lyricmode {
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  You %|
  gave us the choice __ %|
  Free -- dom in our %|
  will to lis -- ten to Your %|
  voice And %|
  we chose our -- selves __ %|
  Still we do the %|
  same %|
  In %|
  the Spir -- it’s pow’r __ %|
  Rose up from the %|
  grave in the morn -- ing %|
  hour And %|
  spoke once a -- gain __ %|
  A new cov -- e -- %|
  nant %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
}

alignerOneTwo = \relative {
  r2 r4 r4 |
  r4 r4 r4 r4 |
  r2 r8 r8 r8 r8 |
  r2 r8 r8 r8 r8 |
  r2. r4 |
  r4 r4 r4 r4 |
  r2 r8 r8 r8 r8 |
  r4. r8 r4 r4 |
  r8 r4. r4 c4 |
  c4 c4 c4 c4( |
  c4.) c8 c8 c8 c8 c8 |
  c4.( c8) c8 c8 c8 c8 |
  c2. c4 |
  c4 c4 c4 c4( |
  c4 c8) c8 c8 c8 c8 c8 |
  c1 |
  r2 r4 c4 |
  c4 c4 c4 c4( |
  c2) c8 c8 c8 c8 |
  c2 c8 c8 c8 c8 |
  c2. c4 |
  c4 c4 c4 c4( |
  c4.) c8 c8 c8 c8 c8 |
  c1 |
  r2 r4. r8 |
  r8 r4 r8 r8 r4 r8 |
  r8 r8 r2. |
  r1 |
  r8 r4 r8 r8 r4 r8 |
  r8 r4 r8 r8 r4 r8 |
  r8 r8 r2. |
  r1 |
}

lyricOneTwo = \lyricmode {
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  %|
  Now %|
  bap -- tized and free __ %|
  The Spir -- it as our %|
  guide, __ Word be -- fore our %|
  feet We %|
  walk in the light __ %|
  As You are in the %|
  light %|
  A -- %|
  dopt -- ed and blessed __ %|
  Trust -- ing in Your %|
  name, we come and con -- %|
  fess We %|
  hold on to hope __ %|
  And the in -- her -- it -- %|
  ance %|
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