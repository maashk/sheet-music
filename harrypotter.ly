\version "2.24.0"

\header {
  title = "海格主題曲 (Hedwig's Theme)"
  subtitle = "選自《哈利波特》— 手鈴/手鐘 3 人合奏總譜"
  composer = "John Williams"
  arranger = "Handbell Arr. (3 Ringers)"
  meter = "3/4 拍, ♩ = 140 (Mysterioso)"
}

global = {
  \key e \minor
  \time 3/4
  \tempo "Mysterioso" 4 = 140
}

ringerOneMelody = \relative c''' {
  \global
  \partial 4 r4 |
  r2. | r2. | r2. | r2. |
  r2. | r2. | r2. | r2 b'4^\markup { \bold "R" } |
  e4.\f g8 fis4 | e2 b'4 | d2 cis4 | c2 gis4 |
  c4. b8 ais4 | b2 g4 | e2.^\markup { \bold "LV" } | r2 r4 |
  2.^\markup { \bold "SK" } | 2.^\markup { \bold "SK" } |
  2.^\markup { \bold "Mart." } | e2.^\markup { \bold "LV" } \bar "|."
}

ringerTwoHarmony = \relative c'' {
  \global
  \partial 4 b4\p^\markup { \bold "LV" } |
  e4. g8 fis4 | e2 b'4 | a2. | fis2. |
  e4. g8 fis4 | dis2 f4 | b,2. | r2. |
  g'2.\mf | g2. | fis2. | e2. |
  e2. | dis2. | b2. | r2 r4 |
  2. | 2. | 2. | 2. \bar "|."
}

ringerThreeBass = \relative c {
  \global
  \partial 4 r4 |
  e4\p^\markup { \bold "LV" } r b | e r b | a r e' | b r fis |
  e4 r b' | b r fis | e r b' | e, r r |
  e4\mf r b' | e, r b' | d, r a' | c, r g' |
  c,4 r g' | b, r fis' | e r b' | e, r r |
  e2.^\markup { \bold "SK" } | d2.^\markup { \bold "SK" } | b2.^\markup { \bold "Mart." } | e,2.^\markup { \bold "LV" } \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = #"Ringer 1 (High)"
      shortInstrumentName = #"R1"
    } \ringerOneMelody

    \new Staff \with {
      instrumentName = #"Ringer 2 (Mid)"
      shortInstrumentName = #"R2"
    } \ringerTwoHarmony

    \new Staff \with {
      instrumentName = #"Ringer 3 (Bass)"
      shortInstrumentName = #"R3"
    } { \clef bass \ringerThreeBass }
  >>
  \layout { }
  \midi { }
}