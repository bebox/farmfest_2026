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
  title = "HOSANA"
  composer = "108i"
  titlex = "Farmfest 2026 (BASS)"
  style = ""
  broj = "2"
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
  %\tempo 4 = 79
  \markMoj
  r2 r4 r8 g'16 fis16 ~|
  fis8 g16 fis16 ~fis8 g16 fis16 ~fis8 e16 e16 ~e8 d8 |
  d2. r8 g16 fis16 ~|
  fis8 g16 fis16 ~fis16 fis16 e16 d16 ~d2 \bar "||" | \break
  \markMoj
  r8 a'8 a8 fis8 h8 a8 (g8 )fis8 |
  r8 fis8 fis8 fis8 e8 fis8 g8 fis8 |
  r8 a8 a8 fis8 h8 a8 (g8 )fis8 |
  r8 fis8 fis8 fis8 g8 fis8 e8 d8 |
  r8 a'8 a8 a8 h8 h4 a8 |
  r8 fis8 fis8 fis8 e8 fis8 g8 fis8 |
  r8 a8 a8 fis8 h8 a8 (g8 )fis8 |
  r8 fis8 fis8 fis8 g8 fis8 e8 d8 \bar "||" | \break
  \markMoj
  r8 r16 d16 fis8 a8 a8 g8 fis16 e8 fis16 |
  r4 fis8 fis8 e8 fis8 e8 d16 d16 |
  r4 fis8 a8 a8 g8 fis16 e8 fis16 |
  r4 fis8 fis8 e8 fis8 e8 d16 d16 |
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
    \new ChordNames { \jazzChords \clef bass \transpose c' c \harmonyOne }
    \new Staff {
        <<
        \new Voice { \clef bass \transpose c' c \staffOne }
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