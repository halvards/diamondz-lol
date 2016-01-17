#!/usr/bin/env lci

HAI 1.2
CAN HAS STDIO?
CAN HAS STRING?

O HAI IM charlib
  I HAS A upperAlphabet ITZ "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  I HAS A lowerAlphabet ITZ "abcdefghijklmnopqrstuvwxyz"

  HOW IZ I gettinCharFrom YR index
    FOUND YR I IZ STRING'Z AT YR ME'Z upperAlphabet AN YR index MKAY
  IF U SAY SO

  HOW IZ I gettinIndexFrom YR char
    IM IN YR loop UPPIN YR var TIL BOTH SAEM var AN 26
      I HAS A upperChar ITZ STRING IZ AT YR ME'Z upperAlphabet AN YR var MKAY
      BOTH SAEM upperChar AN char, O RLY?
        YA RLY
          FOUND YR var
      OIC
      I HAS A lowerChar ITZ STRING IZ AT YR ME'Z lowerAlphabet AN YR var MKAY
      BOTH SAEM lowerChar AN char, O RLY?
        YA RLY
          FOUND YR var
      OIC
      IM OUTTA YR loop
    GTFO
  IF U SAY SO

  HOW IZ I spaceString YR length
    I HAS A str ITZ ""
    IM IN YR loop UPPIN YR var TIL BOTH SAEM var AN length
      str R SMOOSH str AN " " MKAY
    IM OUTTA YR loop
    FOUND YR str
  IF U SAY SO

  HOW IZ I charLine YR var AN YR position
    I HAS A c ITZ charlib IZ gettinCharFrom YR var MKAY
    I HAS A beforeSpaceLength ITZ DIFF OF position AN var
    I HAS A beforeSpace ITZ charlib IZ spaceString YR beforeSpaceLength MKAY
    I HAS A line ITZ STRING
    var, O RLY?
      YA RLY
        I HAS A afterSpaceLength ITZ DIFF OF var AN 1
        I HAS A afterSpace ITZ charlib IZ spaceString YR afterSpaceLength MKAY
        line R SMOOSH beforeSpace AN c AN afterSpace AN " " AN afterSpace AN c MKAY
      NO WAI
        line R SMOOSH beforeSpace AN c MKAY
    OIC
    FOUND YR line
  IF U SAY SO
KTHX

I HAS A nil ITZ A NOOB
I HAS A inputChar
GIMMEH inputChar
I HAS A position ITZ charlib IZ gettinIndexFrom YR inputChar MKAY
BOTH SAEM position AN nil, O RLY?
  YA RLY
    VISIBLE "INVALID INPUT!!1!1"
    GTFO
OIC

IM IN YR loop UPPIN YR var TIL DIFFRINT var AN SMALLR OF var AN position
  I HAS A line ITZ charlib IZ charLine YR var AN YR position MKAY
  VISIBLE line
IM OUTTA YR loop

IM IN YR loop UPPIN YR downVar TIL BOTH SAEM downVar AN position
  I HAS A var ITZ DIFF OF position AN downVar
  var R DIFF OF var AN 1
  I HAS A line ITZ charlib IZ charLine YR var AN YR position MKAY
  VISIBLE line
IM OUTTA YR loop

KTHXBYE
