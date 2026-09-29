\version "2.24.0"

\header {
  title = \markup \center-column { "旋轉木馬" \small "(Merry-Go-Round)" }
  subtitle = "JFFT x 黃淑蔓 — 完整手鈴/手鐘合奏總譜"
  composer = "曲：黃淑蔓 / Chick Chan"
  lyricist = "詞：JFFT"
  arranger = "編配：Handbell Ensemble Arr. (3 Ringers)"
  meter = "4/4 拍, ♩ = 125"
}

global = {
  \key c \major
  \time 4/4
  \tempo "Allegretto" 4 = 125
}

% ==========================================
% Ringer 1 (High / Treble Melody: C6 - G6)
% ==========================================
r1Melody = \relative c''' {
  \global
  
  % --- Intro (音樂盒效果) ---
  \mark \markup { \box "Intro" }
  r1^\markup { \bold "LV" \italic "(Music Box style)" } | r1 | r1 | r2 r4 c8 d | \break

  % --- Verse 1 (主歌 A) ---
  \mark \markup { \box "Verse 1" }
  e4.\p e8 d4 c | d2. c8 d | e4. e8 d4 c | d2. r4 |
  c4. d8 e4 g | f e d c | e4 e8 d c4 d | e2. r4 | \break

  % --- Pre-Chorus (副歌前奏) ---
  \mark \markup { \box "Pre-Chorus" }
  f4\< f e e | d4. e8 d4 c\! | d1\mf | r2 r4^\markup { \bold "R" } c8 d | \break

  % --- Chorus 1 (副歌) ---
  \mark \markup { \box "Chorus 1" }
  e4.\f e8 d4 c | d2. c8 d | e4. e8 d4 c | c2. c8 d |
  e4. f8 g4 g | f e d c | e4. e8 d4 d | c2. r4 | \break

  % --- Interlude (間奏) ---
  \mark \markup { \box "Interlude" }
  g'4.\mf f8 e4 d | c2. r4 | g'4. f8 e4 d | c2. r4 | \break

  % --- Chorus 2 (高潮副歌) ---
  \mark \markup { \box "Chorus 2" }
  e4.\ff e8 d4 c | d2. c8 d | e4. e8 d4 c | c2. c8 d |
  e4. f8 g4 g | f e d c | e4. e8 d4 d | c2. r4 | \break

  % --- Outro (萌系魔法 & 木馬停下) ---
  \mark \markup { \box "Outro - Moe Moe Kyun!" }
  <c, e g>2^\markup { \bold "SK" \italic "(Shake)" } <c f a>2^\markup { \bold "SK" } |
  <c e g>4^\markup { \bold "Mart." \italic "(Martellato)" } r4 r2 |
  g''4.^\markup { \italic "rall. (Carousel stopping)" } f8 e4 d |
  c1^\markup { \bold "LV" } \bar "|."
}

% ==========================================
% Ringer 2 (Mid / Harmony: C5 - A5)
% ==========================================
r2Harmony = \relative c'' {
  \global
  
  % --- Intro ---
  g4\p^\markup { \bold "LV" } g g g | g g g g | g g g g | g2 r2 |

  % --- Verse 1 ---
  c,4\p c c c | b b b b | c c c c | b b b b |
  a a c c | d d b b | c c b b | c2. r4 |

  % --- Pre-Chorus ---
  d4\< d c c | b4. c8 b4 a\! | b1\mf | r1 |

  % --- Chorus 1 ---
  g'4.\f g8 f4 e | f2. e8 f | g4. g8 f4 e | e2. e8 f |
  g4. a8 b4 b | a g f e | g4. g8 f4 f | e2. r4 |

  % --- Interlude ---
  e4.\mf d8 c4 b | a2. r4 | e'4. d8 c4 b | a2. r4 |

  % --- Chorus 2 ---
  g'4.\ff g8 f4 e | f2. e8 f | g4. g8 f4 e | e2. e8 f |
  g4. a8 b4 b | a g f e | g4. g8 f4 f | e2. r4 |

  % --- Outro ---
  <e g>2^\markup { \bold "SK" } <f a>2^\markup { \bold "SK" } |
  <e g>4^\markup { \bold "Mart." } r4 r2 |
  e4. d8 c4 b |
  g1^\markup { \bold "LV" } \bar "|."
}

% ==========================================
% Ringer 3 (Low / Bass Line: C4 - A4)
% ==========================================
r3Bass = \relative c {
  \global
  
  % --- Intro ---
  c4\p^\markup { \bold "LV" } r g r | c r g r | c r g r | c r r2 |

  % --- Verse 1 ---
  c4\p r g r | g r d r | c r g r | g r d r |
  f r c r | g' r d r | c r g r | c2. r4 |

  % --- Pre-Chorus ---
  f4\< r c r | g' r d r\! | g1\mf | r1 |

  % --- Chorus 1 ---
  c4\f r g r | g r d r | c r g r | c r g r |
  f r c r | g' r d r | c r g r | c2. r4 |

  % --- Interlude ---
  c4\mf r g r | f r c r | c' r g r | f r c r |

  % --- Chorus 2 ---
  c'4\ff r g r | g r d r | c r g r | c r g r |
  f r c r | g' r d r | c r g r | c2. r4 |

  % --- Outro ---
  <c g'>2^\markup { \bold "SK" } <f, c'>2^\markup { \bold "SK" } |
  <c g'>4^\markup { \bold "Mart." } r4 r2 |
  c'4. r8 g4 r |
  c1^\markup { \bold "LV" } \bar "|."
}

% ==========================================
% Score Layout (三行手鈴總譜)
% ==========================================
\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = #"Ringer 1 (High)"
      shortInstrumentName = #"R1"
    } \r1Melody

    \new Staff \with {
      instrumentName = #"Ringer 2 (Mid)"
      shortInstrumentName = #"R2"
    } \r2Harmony

    \new Staff \with {
      instrumentName = #"Ringer 3 (Bass)"
      shortInstrumentName = #"R3"
    } { \clef bass \r3Bass }
  >>

  \layout {
    \context {
      \Staff
      \consists "Mark_engraver"
    }
  }
  \midi { }
}
