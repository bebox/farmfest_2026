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
  title = "TVOJE NEBO"
  titlex = "Farmfest 2025"
  composer = "Danko Tomanić"
  style = ""
  broj = "9"
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
  \key b \major
  \time 4/4
  %\tempo 4 = 114
  \clef treble
  \markMoj
  r8 g'8 g8 f8 g8 f8 g8 f8 ~|
  f8 c8 ~c4 r2 |
  r8 g'8 g8 f8 g8 g8 f8 f8 (~|
  f16 g16 a8 ~a4 )r2 |
  r8 g8 g8 f8 g8 f8 g8 f8 ~|
  f8 c8 ~c4 r2 |
  r8 es8 es8 d8 es8 d8 es8 c8 ~|
  c2 r2 \bar ":|." | \break
  \markMojPonRight
  r4 b'8 a8 b8 a8 b8 b8 (~|
  b8 c8 ~c4 )r2 |
  r4 d8 c8 d8 c8 d8 d8 (~|
  d8 es8 ~es4 )r8 d4 es8 |
  f2 \tuplet 3/2 { f4 es4 d4 } |
  c2 d4. a8 |
  c8 b8 (~b4 ~b8 a8 b8 a8 |
  b1 )\bar "|." |
}

harmonyOne = \chordmode  {
  c1:m7 |
  f1:7 |
  c1:m7 |
  f1:7 |
  c1:m7 |
  f1:7 |
  c1:m7 |
  f1 |
  b1 |
  f1 |
  g1:m |
  es1 |
  b1 |
  f2 d2:7 |
  g1:m |
  es1 |
  \bar "|."
}

alignerOneZero = \relative {
  r8 c8 c8 c8 c8 c8 c8 c8 |
  r8 c8( c4) r2 |
  r8 c8 c8 c8 c8 c8 c8 c8( |
  c16 c16 c8 c4) r2 |
  r8 c8 c8 c8 c8 c8 c8 c8 |
  r8 c8( c4) r2 |
  r8 c8 c8 c8 c8 c8 c8 c8( |
  c2) r2 |
  r4 c8 c8 c8 c8 c8 c8( |
  c8 c8 c4) r2 |
  r4 c8 c8 c8 c8 c8 c8( |
  c8 c8 c4) r8 c4 c8 |
  c2 \tuplet 3/2 {c4 c4 c4 } |
  c2 c4. c8 |
  c8 c8( c4 c8 c8 c8 c8 |
  c1) |
}

lyricOneZero = \lyricmode {
  Sad ru -- ke po -- di -- žem Te -- %|
  bi, __ %|
  Te -- bi sam sve pre -- da -- o, __ %|
  %|
  i svo -- je sto -- pe sad ne -- %|
  bih __ %|
  bez te -- be po -- kre -- nu -- o. __ %|
  %|
  Još Te o -- sje -- ćam tu, __ %|
  %|
  k'o da ho -- dam po tlu, __ %|
  la -- ga -- %|
  no, na prs -- ti -- %|
  ma: Tvo -- je %|
  ne -- bo. __ %|
  %|
}

alignerOneOne = \relative {
  r8 c8 c8 c8 c8 c8 c8 c8 |
  r8 c8( c4) r2 |
  r8 c8 c8 c8 c8 c8 c8 c8( |
  c16 c16 c8 c4) r2 |
  r8 c8 c8 c8 c8 c8 c8 c8( |
  c8) c8( c4) r2 |
  r8 r8 c8 c8 c8 c8 c8 c8( |
  c2) r2 |
  r4 r8 r8 r8 r8 r8 r8 |
  r8 r8 r4 r2 |
  r4 r8 r8 r8 r8 r8 r8 |
  r8 r8 r4 r8 r4 r8 |
  r2\tuplet 3/2 { r4 r4 r4} |
  r2 r4. r8 |
  r8 r8 r4 r8 r8 r8 r8 |
  r1 |
}

lyricOneOne = \lyricmode {
  Tvo -- ja me lju -- bav u -- mi -- %|
  va, __ %|
  ko ro -- sa mi -- ri -- sni cvijet. __ %|
  %|
  Sve mo -- je "s to" -- bom pre -- bi __ %|
  va, __ %|
  Ti si je -- di -- ni svet. __ %|
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