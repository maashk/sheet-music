\version "2.24.0"

\header {
  title = "旋轉木馬 (Merry-Go-Round)"
  subtitle = "JFFT x 黃淑蔓 — 手鐘三隊員編制 (C3–C8 Set Range)"
  composer = "黃淑蔓 / Chick Chan"
  arranger = "Handbell / Handchime Arr."
}

global = {
  \key c \major
  \time 4/4
  \tempo 4 = 125
}

% --- Ringer 1: 高音主旋律 (Treble / C6-G6) ---
ringerOne = \relative c''' {
  \global
  \mark \markup { \bold "Chorus (副歌)" }
  e4 e8. d16 c4 d | e2. r4 | e4 e8. d16 c4 d | c2. r4 |
  a4 c8. d16 e4 g | f e d c | e4 e8. d16 c4 d | e2. r4 \bar "||"
  
  \mark \markup { \bold "Moe Moe Kyun! (萌系魔法)" }
  <c e g>2^\markup { \italic "Shake" } <c f a>2 |
  <c e g>4^\markup { \italic "Martellato / Damp" } r4 r2 \bar "|."
}

% --- Ringer 2: 中音和聲 (Treble / C5-G5) ---
ringerTwo = \relative c'' {
  \global
  g4 g8. f16 e4 f | g2. r4 | g4 g8. f16 e4 f | e2. r4 |
  f4 a8. b16 c4 d | c b a g | g4 g8. f16 e4 f | g2. r4 \bar "||"
  
  <g e>2 <a f>2 |
  <g e>4 r4 r2 \bar "|."
}

% --- Ringer 3: 深層低音 (Bass Clef / C4-G4) ---
ringerThree = \relative c {
  \global
  c4 r g r | c4 r g r | a4 r f r | g4 r d r |
  f4 r c r | g'4 r d r | c4 r g r | c2. r4 \bar "||"
  
  <c g'>2 <f c'>2 |
  <c g'>4 r4 r2 \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = #"Ringer 1 (C6-G6)"
      shortInstrumentName = #"R1"
    } \ringerOne
    
    \new Staff \with {
      instrumentName = #"Ringer 2 (C5-G5)"
      shortInstrumentName = #"R2"
    } \ringerTwo
    
    \new Staff \with {
      instrumentName = #"Ringer 3 (C4-G4)"
      shortInstrumentName = #"R3"
    } { \clef bass \ringerThree }
  >>
  
  \layout { }
  \midi { }
}
