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
  title = "HOSANA"
  composer = "108i"
  titlex = "Farmfest 2026 (Eb)"
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
  \key h \major
  \time 4/4
  %\tempo 4 = 79
  \markMoj
  r2 r4 r8 e'16 dis16 ~|
  dis8 e16 dis16 ~dis8 e16 dis16 ~dis8 cis16 cis16 ~cis8 h8 |
  h2. r8 e16 dis16 ~|
  dis8 e16 dis16 ~dis16 dis16 cis16 h16 ~h2 \bar "||" | \break
  \markMoj
  r8 fis'8 fis8 dis8 gis8 fis8 (e8 )dis8 |
  r8 dis8 dis8 dis8 cis8 dis8 e8 dis8 |
  r8 fis8 fis8 dis8 gis8 fis8 (e8 )dis8 |
  r8 dis8 dis8 dis8 e8 dis8 cis8 h8 |
  r8 fis'8 fis8 fis8 gis8 gis4 fis8 |
  r8 dis8 dis8 dis8 cis8 dis8 e8 dis8 |
  r8 fis8 fis8 dis8 gis8 fis8 (e8 )dis8 |
  r8 dis8 dis8 dis8 e8 dis8 cis8 h8 \bar "||" | \break
  \markMoj
  r8 r16 h16 dis8 fis8 fis8 e8 dis16 cis8 dis16 |
  r4 dis8 dis8 cis8 dis8 cis8 h16 h16 |
  r4 dis8 fis8 fis8 e8 dis16 cis8 dis16 |
  r4 dis8 dis8 cis8 dis8 cis8 h16 h16 |
}

harmonyOne = \chordmode  {
  d2 g4 d4/fis |
  h2:m7 a4 g4 |
  d2 g4 d4/fis |
  h2:m7 a4 g4 |
  d2 g4 d4/fis |
  h2:m7 a4 g4 |
  d2 g4 d4/fis |
  h2:m7 g4 a4 |
  d2 g4 d4/fis |
  h2:m7 a4 g4 |
  d2 g4 d4/fis |
  h2:m7 g4 a4 |
  d2 g4 d4/fis |
  h2:m7 a4 g4 |
  d2 g4 d4/fis |
  h2:m7 a4 g4 |
  \bar "|."
}

alignerOneZero = \relative {
  r2 r4 r8 r16 r16 |
  r8 r16 r16 r8 r16 r16 r8 r16 r16 r8 r8 |
  r2. r8 r16 r16 |
  r8 r16 r16 r16 r16 r16 r16 r2 |
  r8 c8 c8 c8 c8 c8 r8 c8 |
  r8 c8 c8 c8 c8 c8 c8 c8 |
  r8 c8 c8 c8 c8 c8 r8 c8 |
  r8 c8 c8 c8 c8 c8 c8 c8 |
  r8 c8 c8 c8 c8 c4 c8 |
  r8 c8 c8 c8 c8 c8 c8 c8 |
  r8 c8 c8 c8 c8 c8 r8 c8 |
  r8 c8 c8 c8 c8 c8 c8 c8 |
  r8 r16 c16 c8 c8 c8 c8 c16 c8 c16 |
  r4 c8 c8 c8 c8 c8 c16 c16 |
  r4 c8 c8 c8 c8 c16 c8 c16 |
  r4 c8 c8 c8 c8 c8 c16 c16 |
}

lyricOneZero = \lyricmode {
  %|
  %|
  %|
  %|
  Ho -- sa -- na, Ho -- sa -- na, %|
  u -- zvi -- šen vje -- čni je Kralj. %|
  Ho -- sa -- na, Ho -- sa -- na, %|
  lju -- bav sa kri -- ža mi da. %|
  Ho -- sa -- na, Ho -- sa -- na, %|
  u -- zvi -- šen vje -- čni je Kralj. %|
  Ho -- sa -- na, Ho -- sa -- na, %|
  lju -- bav sa kri -- ža mi da. %|
  A pod tim kri -- žem sto -- jim ja, %|
  Tvo -- jom kr -- vlju u -- ma -- ljan. %|
  I u ru -- ci dr -- žiš klin, %|
  Ka -- kvim smo te pro -- bo -- li. %|
}

alignerOneOne = \relative {
  r2 r4 r8 r16 r16 |
  r8 r16 r16 r8 r16 r16 r8 r16 r16 r8 r8 |
  r2. r8 r16 r16 |
  r8 r16 r16 r16 r16 r16 r16 r2 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r4 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r8 r8 r8 r8 r8 r8 r8 r8 |
  r8 r16 c16 c8 c8 c8 c8 c16 c8 c16 |
  r4 c8 c8 c8 c8 c8 c16 c16 |
  r4 c8 c8 c8 c8 c16 c8 c16 |
  r4 c8 c8 c8 c8 c8 c16 c16 |
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
  %|
  %|
  %|
  %|
  A tvo -- je ru -- ke, I -- su -- se, %|
  Na tom kri -- žu ra -- spe -- te, %|
  To -- li -- ko ra -- ši -- re -- ne %|
  Da bi sve za -- gr -- li -- le. %|
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