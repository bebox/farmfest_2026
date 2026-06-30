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
  title = "POZIV"
  titlex = "Farmfest 2025 (Bb)"
  composer = "Danko Tomanić"
  style = ""
  broj = "6"
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
  \key h \major
  \time 4/4
  %\tempo 4 = 80
  \clef treble
  \markMoj
  r8 gis'16 ais16 h16 ais8. r8 cis16 h16 ais8 (gis8 )|
  r4 fis8. gis16 gis8 (fis8 ~fis4 )|
  r8 gis16 ais16 h16 ais8. r8 cis16 h16 ais8 gis8 |
  r4 fis8 dis8 gis8 (fis8 ~fis4 )| \break
  r8. cis'16 cis16 cis16 ~cis16 h16 ais8. gis16 ~gis4 |
  r8. cis16 cis16 cis16 ~cis16 h16 ais8. gis16 ~gis4 |
  fis4 gis8 gis16 (fis16 ~fis2 )\bar "||" | \break
  \markMoj
  r8 h16 cis16 dis8 cis16 e16 ~e8 dis8 cis8 h8 |
  h16 (ais16 h8 ~h4 )h8 h8 cis8 (e8 )|
  dis8 h16 cis16 dis8 cis16 e16 ~e8 dis8 cis8 h8 |
  h16 (fis16 gis8 ~gis4 )e'8 dis8 cis8 (h8 )|
  h1 \bar "|." |
}

harmonyOne = \chordmode  {
  gis1:m |
  h1 |
  gis1:m |
  h1 |
  gis2:m e2 |
  gis2:m e2 |
  fis1 |
  h2 fis2 |
  gis2:m e4 fis4 |
  h2 fis2 |
  gis2:m e4 fis4 |
  h1 |
  \bar "|."
}

alignerOneZero = \relative {
  r8 c16 c16 c16 c8. r8 c16 c16 c8( c8) |
  r4 c8. c16 c8( c8 c4) |
  r8 c16 c16 c16 c8. r8 c16 c16 c8 c8 |
  r4 c8 c8 c8( c8 c4) |
  r8. c16 c16 c16( c16) c16 c8. c16( c4) |
  r8. r16 c16 c16( c16) c16 c8. c16( c4) |
  c4 c8 c16( c16 c2) |
  r8 r16 r16 r8 r16 r16 r8 r8 r8 r8 |
  r16 r16 r8 r4 r8 r8 r8 r8 |
  r8 r16 r16 r8 r16 r16 r8 r8 r8 r8 |
  r16 r16 r8 r4 r8 r8 r8 r8 |
  r1 |
}

lyricOneZero = \lyricmode {
  \set stanza = "1." Kad sam ču -- o po -- ziv Tvoj, __ %|
  Go -- spo -- de, __ %|
  ne ra -- zmi -- šljah ni mi -- nu -- tu, %|
  ja -- vih se. __ %|
  I ne -- što __ se ču -- dno __ %|
  zbi -- lo __ u me -- ni, __ %|
  ne znam što. __ %|
  %|
  %|
  %|
  %|
  %|
}

alignerOneOne = \relative {
  r8 c16 c16 c16 c8. r8 c16 c16 c8 c8 |
  r4 c8. c16 c8( c8 c4) |
  r8 c16 c16 c16 c8. r8 c16 c16 c8 c8 |
  r4 c8 c8 c8( c8 c4) |
  r8. c16 c16 c16 c16 c16 c8. c16( c4) |
  r8. c16 c16 c16( c16) c16 c8. c16( c4) |
  c4 c8 c16( c16 c2) |
  r8 r16 r16 r8 r16 r16 r8 r8 r8 r8 |
  r16 r16 r8 r4 r8 r8 r8 r8 |
  r8 r16 r16 r8 r16 r16 r8 r8 r8 r8 |
  r16 r16 r8 r4 r8 r8 r8 r8 |
  r1 |
}

lyricOneOne = \lyricmode {
  \set stanza = "2." Ti mi nu -- diš svo -- ju lju -- bav %|
  da -- ni -- ma, __ %|
  Ti mi nu -- diš svo -- ju lju -- bav %|
  no -- ći -- ma. __ %|
  I sve je ka -- o rije -- ka, __ %|
  du -- bo -- ko __ i vje -- čno, __ %|
  Go -- spo -- de. __ %|
  %|
  %|
  %|
  %|
  %|
}

alignerOneTwo = \relative {
  r8 c16 c16 c16 c8. r8 c16 c16 c8 c8 |
  r4 c8. c16 c8( c8 c4) |
  r8 c16 c16 c16 c8. r8 c16 c16 c8 c8 |
  r4 c8 c8 c8( c8 c4) |
  r8. c16 c16 c16 c16 c16 c8. c16( c4) |
  r8. r16 c16 c16 c16 c16 c8. c16( c4) |
  c4 c8 c16( c16 c2) |
  r8 c16 c16 c8 c16 c16 r8 c8 c8 c8 |
  c16( c16 c8 c4) c8 c8 c8 r8 |
  c8 c16 c16 c8 c16 c16( c8) c8 c8 c8 |
  c16( c16 c8 c4) c8 c8 c8 r8 |
  c1 |
}

lyricOneTwo = \lyricmode {
  \set stanza = "3." Pro -- bo -- li su Tvo -- je ve -- ne, %|
  Go -- spo -- de, __ %|
  a u nji -- ma ži -- vot vje -- čni %|
  za me -- ne. __ %|
  I sve je ta -- ko fi -- no, __ %|
  ne -- mo -- gu -- će di -- vno, __ %|
  Go -- spo -- de. __ %|
  Ne -- ka sad od -- je -- kne na -- ša %|
  riječ: __ A -- le -- lu -- %|
  ja! Ne -- ka zna -- ju svi __ da sla -- vim %|
  te: __ A -- le -- lu -- %|
  ja! %|
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
