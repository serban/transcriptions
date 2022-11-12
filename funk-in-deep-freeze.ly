\version "2.22.2"

\include "settings.ily"

\header {
  title = "Funk In Deep Freeze"
  composer = "Hank Mobley"
}

changes = \chordmode {
  \set chordChanges = ##t
}

melody = \relative c' {
  \numericTimeSignature

  \clef treble
  \key af \major
  \time 4/4

% \repeat volta 2 {
%   bf4. af8 r4 r8 cf8~ |
%   cf8 af8 bf8 af8 r8 f8 r8 af8 |
%   bf8 af8 bf8 af8 bf4 af8 f8 |
%   r4 r8 af8~ af8 f8 af4 |
%   \break

%   f4. f8 r4 f4~ |
%   f4 f4~ f8 f8 af8 bf8~ |
%   bf4. af8 r8 f8 ef8 f8~ |
%   f4 r4 c8 d8 f8 af8 |
% }

  \partial 2 c8 d8 f8 af8 |
  \repeat volta 2 {
    <bf g>4. <af f>8 r4 r8 <cf af>8~ |
    <cf af>8 <af f>8 <bf g>8 <af f>8 r8 <f c>8 r8 <af f>8 |
    <bf g>8 <af f>8 <bf g>8 <af f>8 <bf df,>4 <af c,>8 <f af,>8 |
    r4 r8 af8~ af8 f8 af4 |
    \break

    <f d>4. <f df>8 r4 <f c>4~ |
    <f c>4 <f cf>4~ <f cf>8 <f bf,>8 <af b,>8 <bf df,>8~ |
    <bf df,>4. <af c,>8 r8 f8 ef8 f8~ |
    f4 r4 c8 d8 f8 af8 |
  }
}

chart = {
  <<
    \new ChordNames \changes
    \new Staff \melody
  >>
}

\include "books.ily"
