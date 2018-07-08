% Lily was here -- automatically converted by /usr/bin/midi2ly from /Ember Library/Ember satellite projects/personal/music/2018jul07.mid
\version "2.14.0"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

trackAchannelA = {


  \key c \major

  \time 4/4


  \key c \major

  \tempo 4 = 120

}

trackAchannelB = \relative c {
  <a'' c e f a >4*455/480 r4*25/480 <a c e f a >4*455/480
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
  \context Voice = voiceB \trackAchannelB
>>


trackBchannelA = {


  \key c \major

}

trackBchannelB = \relative c {
  <f, a c d e > r4*25/480 <g b c d f >4*455/480
}

trackB = <<

  \clef bass

  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
>>


\score {
  <<
    \context Staff=trackA \trackA
    \context Staff=trackB \trackB
  >>
  \layout {}
  \midi {}
}
