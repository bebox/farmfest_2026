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
  titlex = "Farmfest 2025 (Eb)"
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
  \key fis \major
  \time 4/4
  %\tempo 4 = 80
  \clef treble
  \markMoj
  r8 dis'16 eis16 fis16 eis8. r8 gis16 fis16 eis8 (dis8 )|
  r4 cis8. dis16 dis8 (cis8 ~cis4 )|
  r8 dis16 eis16 fis16 eis8. r8 gis16 fis16 eis8 dis8 |
  r4 cis8 ais8 dis8 (cis8 ~cis4 )| \break
  r8. gis'16 gis16 gis16 ~gis16 fis16 eis8. dis16 ~dis4 |
  r8. gis16 gis16 gis16 ~gis16 fis16 eis8. dis16 ~dis4 |
  cis4 dis8 dis16 (cis16 ~cis2 )\bar "||" | \break
  \markMoj
  r8 fis16 gis16 ais8 gis16 h16 ~h8 ais8 gis8 fis8 |
  fis16 (eis16 fis8 ~fis4 )fis8 fis8 gis8 (h8 )|
  ais8 fis16 gis16 ais8 gis16 h16 ~h8 ais8 gis8 fis8 |
  fis16 (cis16 dis8 ~dis4 )h'8 ais8 gis8 (fis8 )|
  fis1 \bar "|." |
}

harmonyOne = \chordmode  {
  dis1:m |
  fis1 |
  dis1:m |
  fis1 |
  dis2:m h2 |
  dis2:m h2 |
  cis1 |
  fis2 cis2 |
  dis2:m h4 cis4 |
  fis2 cis2 |
  dis2:m h4 cis4 |
  fis1 |
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
