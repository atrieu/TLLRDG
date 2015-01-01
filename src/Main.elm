module TLDraft where

import Graphics.Element (..)
import Graphics.Input (dropDown)
import Signal
import Signal (Signal, (<~), (~))
import Text
import Window
import Json.Decode (..)
import List

main : Signal Element
main = display <~ Window.width
                ~ Signal.subscribe sidec
                ~ Signal.subscribe pxsizec
                ~ Signal.subscribe firstpickc
                ~ Signal.subscribe stylec
                ~ Signal.subscribe rpick1
                ~ Signal.subscribe rpick2
                ~ Signal.subscribe rpick3
                ~ Signal.subscribe rpick4
                ~ Signal.subscribe rpick5
                ~ Signal.subscribe rban1
                ~ Signal.subscribe rban2
                ~ Signal.subscribe rban3
                ~ Signal.subscribe rban4
                ~ Signal.subscribe rban5
                ~ Signal.subscribe dpick1
                ~ Signal.subscribe dpick2
                ~ Signal.subscribe dpick3
                ~ Signal.subscribe dpick4
                ~ Signal.subscribe dpick5
                ~ Signal.subscribe dban1
                ~ Signal.subscribe dban2
                ~ Signal.subscribe dban3
                ~ Signal.subscribe dban4
                ~ Signal.subscribe dban5

sidec : Signal.Channel Bool
sidec = Signal.channel True

firstpickc : Signal.Channel Bool
firstpickc = Signal.channel True

pxsizec : Signal.Channel Bool
pxsizec = Signal.channel True

stylec : Signal.Channel Bool
stylec = Signal.channel True

rpick1 : Signal.Channel Strings
rpick1 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

rpick2 : Signal.Channel Strings
rpick2 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

rpick3 : Signal.Channel Strings
rpick3 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

rpick4 : Signal.Channel Strings
rpick4 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

rpick5 : Signal.Channel Strings
rpick5 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

rban1 : Signal.Channel Strings
rban1 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

rban2 : Signal.Channel Strings
rban2 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

rban3 : Signal.Channel Strings
rban3 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

rban4 : Signal.Channel Strings
rban4 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

rban5 : Signal.Channel Strings
rban5 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

dpick1 : Signal.Channel Strings
dpick1 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

dpick2 : Signal.Channel Strings
dpick2 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

dpick3 : Signal.Channel Strings
dpick3 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

dpick4 : Signal.Channel Strings
dpick4 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

dpick5 : Signal.Channel Strings
dpick5 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

dban1 : Signal.Channel Strings
dban1 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

dban2 : Signal.Channel Strings
dban2 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

dban3 : Signal.Channel Strings
dban3 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

dban4 : Signal.Channel Strings
dban4 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

dban5 : Signal.Channel Strings
dban5 = Signal.channel ("http://wiki.teamliquid.net/dota2/Abaddon", "http://i.imgur.com/WmH43mw.jpg", "http://i.imgur.com/RoFDUy3.jpg", "http://imgur.com/LhvIe87.jpg", "http://imgur.com/nbczvMQ.jpg")

type alias Strings = (String, String, String, String, String)

pxlink21 : Strings -> String
pxlink21 s = "[url=" ++ p1 s ++ "]" ++ "[img]" ++ p2 s ++ "[/img][/url]"

pxlink25 : Strings -> String
pxlink25 s = "[url=" ++ p1 s ++ "]" ++ "[img]" ++ p4 s ++ "[/img][/url]"

pxlinkfp21 : Strings -> String
pxlinkfp21 s = "[url=" ++ p1 s ++ "]" ++ "[img]" ++ p3 s ++ "[/img][/url]"

pxlinkfp25 : Strings -> String
pxlinkfp25 s = "[url=" ++ p1 s ++ "]" ++ "[img]" ++ p5 s ++ "[/img][/url]"

display : Int -> Bool -> Bool -> Bool -> Bool ->
          Strings -> Strings -> Strings -> Strings -> Strings ->
          Strings -> Strings -> Strings -> Strings -> Strings ->
          Strings -> Strings -> Strings -> Strings -> Strings ->
          Strings -> Strings -> Strings -> Strings -> Strings -> Element
display winW side size fpick style radpick1 radpick2 radpick3 radpick4 radpick5
        radban1 radban2 radban3 radban4 radban5
        dipick1 dipick2 dipick3 dipick4 dipick5
        diban1 diban2 diban3 diban4 diban5 =
          flow down [
            Text.fromString "Team Liquid Live Report Draft Generator"
            |> Text.bold
            |> Text.centered
            |> container winW 20 midTop
            , flow right [
                dropDown (Signal.send sidec) sides
                , spacer 30 30
                , dropDown (Signal.send firstpickc) firstpick
                , spacer 30 30
                , dropDown (Signal.send pxsizec) pxsize
                , spacer 30 30
                , dropDown (Signal.send stylec) styles
              ]
            |> container winW 20 midTop
            , flow right [
                flow down [
                  Text.fromString "Radiant Bans"
                  |> Text.leftAligned
                  , dropDown (Signal.send rban1) heroList
                  , dropDown (Signal.send rban2) heroList
                  , dropDown (Signal.send rban3) heroList
                  , dropDown (Signal.send rban4) heroList
                  , dropDown (Signal.send rban5) heroList ]
                , spacer 30 30
                , flow down [
                  Text.fromString "Radiant Picks"
                  |> Text.leftAligned
                  , dropDown (Signal.send rpick1) heroList
                  , dropDown (Signal.send rpick2) heroList
                  , dropDown (Signal.send rpick3) heroList
                  , dropDown (Signal.send rpick4) heroList
                  , dropDown (Signal.send rpick5) heroList ]
                , spacer 30 30
                , flow down [
                  Text.fromString "Dire Bans"
                  |> Text.leftAligned
                  , dropDown (Signal.send dban1) heroList
                  , dropDown (Signal.send dban2) heroList
                  , dropDown (Signal.send dban3) heroList
                  , dropDown (Signal.send dban4) heroList
                  , dropDown (Signal.send dban5) heroList ]
                , spacer 30 30
                , flow down [
                  Text.fromString "Dire Picks"
                  |> Text.leftAligned
                  , dropDown (Signal.send dpick1) heroList
                  , dropDown (Signal.send dpick2) heroList
                  , dropDown (Signal.send dpick3) heroList
                  , dropDown (Signal.send dpick4) heroList
                  , dropDown (Signal.send dpick5) heroList ]
              ] |> container winW 200 midTop
          , let (radbans, direbans, radpicks2, direpicks2) =
                  case size of
                    True -> (pxlink21 radban1 ++ pxlink21 radban2 ++ pxlink21 radban3 ++ pxlink21 radban4 ++ pxlink21 radban5,
                             pxlink21 diban1 ++ pxlink21 diban2 ++ pxlink21 diban3 ++ pxlink21 diban4 ++ pxlink21 diban5,
                             pxlink21 radpick2 ++ pxlink21 radpick3 ++ pxlink21 radpick4 ++ pxlink21 radpick5,
                             pxlink21 dipick2 ++ pxlink21 dipick3 ++ pxlink21 dipick4 ++ pxlink21 dipick5)
                    False -> (pxlink25 radban1 ++ pxlink25 radban2 ++ pxlink25 radban3 ++ pxlink25 radban4 ++ pxlink25 radban5,
                              pxlink25 diban1 ++ pxlink25 diban2 ++ pxlink25 diban3 ++ pxlink25 diban4 ++ pxlink25 diban5,
                              pxlink25 radpick2 ++ pxlink25 radpick3 ++ pxlink25 radpick4 ++ pxlink25 radpick5,
                              pxlink25 dipick2 ++ pxlink25 dipick3 ++ pxlink25 dipick4 ++ pxlink25 dipick5)
                (radpicks, direpicks) =
                  case (size, fpick) of
                    (True, True) -> (pxlinkfp21 radpick1 ++ radpicks2, pxlink21 dipick1 ++ direpicks2)
                    (True, False) -> (pxlink21 radpick1 ++ radpicks2, pxlinkfp21 dipick1 ++ direpicks2)
                    (False, True) -> (pxlinkfp25 radpick1 ++ radpicks2, pxlink25 dipick1 ++ direpicks2)
                    (False, False) -> (pxlink25 radpick1 ++ radpicks2, pxlinkfp25 dipick1 ++ direpicks2)
                result =
                  case (side, style) of
                    (True, True) -> radpicks ++ "[img]http://i.imgur.com/H1j7SBU.png[/img]" ++ direpicks ++ "\n[img]http://i.imgur.com/vvshEHz.png[/img]\n" ++ radbans ++ "[img]http://i.imgur.com/4HTXS8I.png[/img]" ++ direbans
                    (True, False) -> "[img]http://i.imgur.com/El0MbTn.png[/img]\n" ++ radpicks ++ "[img]http://i.imgur.com/LRmdWim.png[/img]" ++ direpicks ++ "\n" ++ radbans ++ "[img]http://i.imgur.com/sNNePMt.png[/img]" ++ direbans
                    (False, True) -> direpicks ++ "[img]http://i.imgur.com/H1j7SBU.png[/img]" ++ radpicks ++ "\n[img]http://i.imgur.com/M0IcDHl.png[/img]\n" ++ direbans ++ "[img]http://i.imgur.com/4HTXS8I.png[/img]" ++ radbans
                    (False, False) -> "[img]http://i.imgur.com/6TiG9vW.png[/img]\n" ++ direpicks ++ "[img]http://i.imgur.com/LRmdWim.png[/img]" ++ radpicks ++ "\n" ++ direbans ++ "[img]http://i.imgur.com/sNNePMt.png[/img]" ++ radbans
            in "[center]" ++ result ++ "[/center]"
            --(if side then "[center]" ++ radpick1 ++ radpick2 ++ radpick3 ++ radpick4 ++ radpick5 ++ "[img]http://i.imgur.com/H1j7SBU.png[/img]" ++ dipick1 ++ dipick2 ++ dipick3 ++ dipick4 ++ dipick5 ++ "\n" ++ "[img]http://i.imgur.com/vvshEHz.png[/img]" ++ "\n" ++ radban1 ++ radban2 ++ radban3 ++ radban4 ++ radban5 ++ "[img]http://i.imgur.com/4HTXS8I.png[/img]" ++ diban1 ++ diban2 ++ diban3 ++ diban4 ++ diban5 ++ "[/center]"
            --else "[center]" ++ dipick1 ++ dipick2 ++ dipick3 ++ dipick4 ++ dipick5 ++ "[img]http://i.imgur.com/H1j7SBU.png[/img]" ++ radpick1 ++ radpick2 ++ radpick3 ++ radpick4 ++ radpick5 ++ "\n" ++ "[img]http://i.imgur.com/M0IcDHl.png[/img]" ++ "\n" ++ diban1 ++ diban2 ++ diban3 ++ diban4 ++ diban5 ++ "[img]http://i.imgur.com/4HTXS8I.png[/img]" ++ radban1 ++ radban2 ++ radban3 ++ radban4 ++ radban5 ++ "[/center]")
          |> Text.fromString
          |> Text.leftAligned
          |> container winW 500 midTop
          ]

p1 : (a, b, c, d, e) -> a
p1 (a, b, c, d, e) = a

p2 : (a, b, c, d, e) -> b
p2 (a, b, c, d, e) = b

p3 : (a, b, c, d, e) -> c
p3 (a, b, c, d, e) = c

p4 : (a, b, c, d, e) -> d
p4 (a, b, c, d, e) = d

p5 : (a, b, c, d, e) -> e
p5 (a, b, c, d, e) = e

(=>) : a -> b -> (a, b)
(=>) a b = (a, b)

firstpick : List (String, Bool)
firstpick =
  [ "Radiant First Pick" => True
  , "Dire First Pick" => False
  ]

sides : List (String, Bool)
sides =
  [ "Radiant Left Side" => True
  , "Dire Left Side" => False
  ]

pxsize : List (String, Bool)
pxsize =
  [ "21 px" => True
  , "25 px" => False
  ]

styles : List (String, Bool)
styles =
  [ "Style A" => True
  , "Style B" => False
  ]

heroList : List (String, (String, String, String, String, String))
heroList =
  case decodeString decodeHeroList json of
    Ok l -> List.map (\(a, b, c, d, e, f) -> (a, (b, c, d, e ++ ".jpg", f ++ ".jpg"))) l
    Err err -> []

decodeHero : Decoder (String, String, String, String, String, String)
decodeHero =
  object6 (,,,,,)
    ("Hero" := string)
    ("undefined" := string)
    ("normal" := string)
    ("FP" := string)
    ("25 normal" := string)
    ("25 FP" := string)

decodeHeroList : Decoder (List (String, String, String, String, String, String))
decodeHeroList = list decodeHero

json : String
json = "[
{
\"Hero\": \"Abaddon\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Abaddon\",
\"normal\": \"http://i.imgur.com/WmH43mw.jpg\",
\"FP\": \"http://i.imgur.com/RoFDUy3.jpg\",
\"25 normal\": \"http://imgur.com/LhvIe87\",
\"25 FP\": \"http://imgur.com/nbczvMQ\"
},
{
\"Hero\": \"Alchemist\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Alchemist\",
\"normal\": \"http://i.imgur.com/6TwXA5a.jpg\",
\"FP\": \"http://i.imgur.com/UlouRW7.jpg\",
\"25 normal\": \"http://imgur.com/tqYXgOY\",
\"25 FP\": \"http://imgur.com/HmY5gY6\"
},
{
\"Hero\": \"Ancient Apparition\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Ancient_Apparition\",
\"normal\": \"http://i.imgur.com/NaKkMQU.jpg\",
\"FP\": \"http://i.imgur.com/6V1G6pO.jpg\",
\"25 normal\": \"http://imgur.com/yTm7pJy\",
\"25 FP\": \"http://imgur.com/f0ksliu\"
},
{
\"Hero\": \"Antimage\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Antimage\",
\"normal\": \"http://i.imgur.com/4ZMcfe5.jpg\",
\"FP\": \"http://i.imgur.com/Xyt4nPX.jpg\",
\"25 normal\": \"http://imgur.com/xZlO20O\",
\"25 FP\": \"http://imgur.com/PrYZkn6\"
},
{
\"Hero\": \"Axe\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Axe\",
\"normal\": \"http://i.imgur.com/WXPrP2j.jpg\",
\"FP\": \"http://i.imgur.com/N0S6qsj.jpg\",
\"25 normal\": \"http://imgur.com/bjU03EP\",
\"25 FP\": \"http://imgur.com/XReTBnl\"
},
{
\"Hero\": \"Bane\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Bane\",
\"normal\": \"http://i.imgur.com/LLgu2vl.jpg\",
\"FP\": \"http://i.imgur.com/QhLke9G.jpg\",
\"25 normal\": \"http://imgur.com/Fy65TgA\",
\"25 FP\": \"http://imgur.com/kvcO1XX\"
},
{
\"Hero\": \"Batrider\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Batrider\",
\"normal\": \"http://i.imgur.com/g2JjyQn.jpg\",
\"FP\": \"http://i.imgur.com/fnnanVk.jpg\",
\"25 normal\": \"http://imgur.com/C2YsVWH\",
\"25 FP\": \"http://imgur.com/57Fjb1Y\"
},
{
\"Hero\": \"Beastmaster\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Beastmaster\",
\"normal\": \"http://i.imgur.com/3EfIcao.jpg\",
\"FP\": \"http://i.imgur.com/vd66Qk2.jpg\",
\"25 normal\": \"http://imgur.com/1ldOT1l\",
\"25 FP\": \"http://imgur.com/iyVVCIB\"
},
{
\"Hero\": \"Bloodseeker\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Bloodseeker\",
\"normal\": \"http://i.imgur.com/QFDcMFO.jpg\",
\"FP\": \"http://i.imgur.com/lgN5Kl2.jpg\",
\"25 normal\": \"http://imgur.com/maAP3Xa\",
\"25 FP\": \"http://imgur.com/hHu6wsg\"
},
{
\"Hero\": \"Bounty Hunter\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Bounty_Hunter\",
\"normal\": \"http://i.imgur.com/Hk9AK6J.jpg\",
\"FP\": \"http://i.imgur.com/vtKBOBi.jpg\",
\"25 normal\": \"http://imgur.com/DIXxC1R\",
\"25 FP\": \"http://imgur.com/1xMs8oH\"
},
{
\"Hero\": \"Brewmaster\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Brewmaster\",
\"normal\": \"http://i.imgur.com/2Hx2uKO.jpg\",
\"FP\": \"http://i.imgur.com/Yi1Pyuq.jpg\",
\"25 normal\": \"http://imgur.com/IDrU4wX\",
\"25 FP\": \"http://imgur.com/VrcEaMf\"
},
{
\"Hero\": \"Bristleback\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Bristleback\",
\"normal\": \"http://i.imgur.com/qm5hD0A.jpg\",
\"FP\": \"http://i.imgur.com/Gbz9sEq.jpg\",
\"25 normal\": \"http://imgur.com/HMCHJFi\",
\"25 FP\": \"http://imgur.com/prJwnfJ\"
},
{
\"Hero\": \"Centaur Warrunner\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Centaur_Warrunner\",
\"normal\": \"http://i.imgur.com/aLsNPS4.jpg\",
\"FP\": \"http://i.imgur.com/QM4C05v.jpg\",
\"25 normal\": \"http://imgur.com/F5mlfCJ\",
\"25 FP\": \"http://imgur.com/zQh0CBT\"
},
{
\"Hero\": \"Chaos Knight\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Chaos_Knight\",
\"normal\": \"http://i.imgur.com/1HMmlkG.jpg\",
\"FP\": \"http://i.imgur.com/L3SQhy0.jpg\",
\"25 normal\": \"http://imgur.com/w2L2Wv0\",
\"25 FP\": \"http://imgur.com/84auKcL\"
},
{
\"Hero\": \"Chen\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Chen\",
\"normal\": \"http://i.imgur.com/4lhzYLO.jpg\",
\"FP\": \"http://i.imgur.com/FET24KX.jpg\",
\"25 normal\": \"http://imgur.com/oeLBPJe\",
\"25 FP\": \"http://imgur.com/nS8w6gm\"
},
{
\"Hero\": \"Clinkz\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Clinkz\",
\"normal\": \"http://i.imgur.com/E9XZPv8.jpg\",
\"FP\": \"http://i.imgur.com/kcSPDZX.jpg\",
\"25 normal\": \"http://imgur.com/YBCnnos\",
\"25 FP\": \"http://imgur.com/ViFpiFT\"
},
{
\"Hero\": \"Clockwerk\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Clockwerk\",
\"normal\": \"http://i.imgur.com/Shd5IgX.jpg\",
\"FP\": \"http://i.imgur.com/TbxKHS0.jpg\",
\"25 normal\": \"http://imgur.com/7ELibNO\",
\"25 FP\": \"http://imgur.com/mGHQljw\"
},
{
\"Hero\": \"Crystal Maiden\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Crystal_Maiden\",
\"normal\": \"http://i.imgur.com/WGPNxzm.jpg\",
\"FP\": \"http://i.imgur.com/J3s1Z4e.jpg\",
\"25 normal\": \"http://imgur.com/quFTGKX\",
\"25 FP\": \"http://imgur.com/16mswZG\"
},
{
\"Hero\": \"Dark Seer\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Dark_Seer\",
\"normal\": \"http://i.imgur.com/oCmomya.jpg\",
\"FP\": \"http://i.imgur.com/YWT0Qlw.jpg\",
\"25 normal\": \"http://imgur.com/2twX9m8\",
\"25 FP\": \"http://imgur.com/5sUMhW1\"
},
{
\"Hero\": \"Dazzle\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Dazzle\",
\"normal\": \"http://i.imgur.com/Qsftvtu.jpg\",
\"FP\": \"http://i.imgur.com/VMc5Jfv.jpg\",
\"25 normal\": \"http://imgur.com/KYoM7zv\",
\"25 FP\": \"http://imgur.com/M9vbWFS\"
},
{
\"Hero\": \"Death Prophet\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Death_Prophet\",
\"normal\": \"http://i.imgur.com/NdTBNwx.jpg\",
\"FP\": \"http://i.imgur.com/PwhDfkp.jpg\",
\"25 normal\": \"http://imgur.com/hlgVovm\",
\"25 FP\": \"http://imgur.com/Orj8olh\"
},
{
\"Hero\": \"Disruptor\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Disruptor\",
\"normal\": \"http://i.imgur.com/hM4lfwp.jpg\",
\"FP\": \"http://i.imgur.com/cKDWZMP.jpg\",
\"25 normal\": \"http://imgur.com/qZBWvjP\",
\"25 FP\": \"http://imgur.com/c8vyjyX\"
},
{
\"Hero\": \"Doom\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Doom\",
\"normal\": \"http://i.imgur.com/Hu02y3a.jpg\",
\"FP\": \"http://i.imgur.com/FOWqdyG.jpg\",
\"25 normal\": \"http://imgur.com/LvkCSyz\",
\"25 FP\": \"http://imgur.com/x6JBDTB\"
},
{
\"Hero\": \"Dragon Knight\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Dragon_Knight\",
\"normal\": \"http://i.imgur.com/lEtqIZ3.jpg\",
\"FP\": \"http://i.imgur.com/jfDaE3s.jpg\",
\"25 normal\": \"http://imgur.com/3glWdKC\",
\"25 FP\": \"http://imgur.com/ZVkyuEI\"
},
{
\"Hero\": \"Drow Ranger\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Drow_Ranger\",
\"normal\": \"http://i.imgur.com/hnFT82R.jpg\",
\"FP\": \"http://i.imgur.com/hjWwmZB.jpg\",
\"25 normal\": \"http://imgur.com/eAMqEaq\",
\"25 FP\": \"http://imgur.com/aPxRG7v\"
},
{
\"Hero\": \"Earthshaker\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Earthshaker\",
\"normal\": \"http://i.imgur.com/HkCMBqR.jpg\",
\"FP\": \"http://i.imgur.com/xsdiblV.jpg\",
\"25 normal\": \"http://imgur.com/uNIZ23h\",
\"25 FP\": \"http://imgur.com/WXURJNX\"
},
{
\"Hero\": \"Earth Spirit\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Earth_Spirit\",
\"normal\": \"http://i.imgur.com/RJ67bxj.jpg\",
\"FP\": \"http://i.imgur.com/RJ67bxj.jpg\",
\"25 normal\": \"http://i.imgur.com/kek4Bti\",
\"25 FP\": \"http://i.imgur.com/kek4Bti\"
},
{
\"Hero\": \"Elder Titan\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Elder_Titan\",
\"normal\": \"http://i.imgur.com/i5jxxaa.jpg\",
\"FP\": \"http://i.imgur.com/waXYHlo.jpg\",
\"25 normal\": \"http://imgur.com/fhxKe2R\",
\"25 FP\": \"http://imgur.com/71cIHt7\"
},
{
\"Hero\": \"Ember Spirit\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Ember_Spirit\",
\"normal\": \"http://i.imgur.com/dX7vYuL.jpg\",
\"FP\": \"http://i.imgur.com/ISZyjWz.jpg\",
\"25 normal\": \"http://imgur.com/ycpaUc6\",
\"25 FP\": \"http://imgur.com/aSolTp6\"
},
{
\"Hero\": \"Enchantress\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Enchantress\",
\"normal\": \"http://i.imgur.com/GGwhO2X.jpg\",
\"FP\": \"http://i.imgur.com/LDp0pMa.jpg\",
\"25 normal\": \"http://imgur.com/0Q3aOfa\",
\"25 FP\": \"http://imgur.com/eDiWLOQ\"
},
{
\"Hero\": \"Enigma\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Enigma\",
\"normal\": \"http://i.imgur.com/74XbJuD.jpg\",
\"FP\": \"http://i.imgur.com/z1UZdGB.jpg\",
\"25 normal\": \"http://imgur.com/Q9vqVvv\",
\"25 FP\": \"http://imgur.com/2WYXM9I\"
},
{
\"Hero\": \"Faceless Void\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Faceless_Void\",
\"normal\": \"http://i.imgur.com/P7DrQpd.jpg\",
\"FP\": \"http://i.imgur.com/nC5CSdW.jpg\",
\"25 normal\": \"http://imgur.com/NV741cm\",
\"25 FP\": \"http://imgur.com/eswzAqP\"
},
{
\"Hero\": \"Gyrocopter\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Gyrocopter\",
\"normal\": \"http://i.imgur.com/SjeFxRS.jpg\",
\"FP\": \"http://i.imgur.com/Zgkq9ZK.jpg\",
\"25 normal\": \"http://imgur.com/KvkA2rK\",
\"25 FP\": \"http://imgur.com/vJv2Ftf\"
},
{
\"Hero\": \"Huskar\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Huskar\",
\"normal\": \"http://i.imgur.com/RsSgALZ.jpg\",
\"FP\": \"http://i.imgur.com/g7IdXqi.jpg\",
\"25 normal\": \"http://imgur.com/jxXnLPH\",
\"25 FP\": \"http://imgur.com/qxpqLVM\"
},
{
\"Hero\": \"Invoker\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Invoker\",
\"normal\": \"http://i.imgur.com/604zQ1v.jpg\",
\"FP\": \"http://i.imgur.com/oG1E4Mp.jpg\",
\"25 normal\": \"http://imgur.com/tUPo8eW\",
\"25 FP\": \"http://imgur.com/ZSxGEw7\"
},
{
\"Hero\": \"Io\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Io\",
\"normal\": \"http://i.imgur.com/mfFzWa5.jpg\",
\"FP\": \"http://i.imgur.com/kniqMHo.jpg\",
\"25 normal\": \"http://imgur.com/Q0dxa2z\",
\"25 FP\": \"http://imgur.com/Rc2Uvos\"
},
{
\"Hero\": \"Jakiro\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Jakiro\",
\"normal\": \"http://i.imgur.com/3vYH9Z8.jpg\",
\"FP\": \"http://i.imgur.com/t3bgiCn.jpg\",
\"25 normal\": \"http://imgur.com/bXFnxaJ\",
\"25 FP\": \"http://imgur.com/GSIGgqa\"
},
{
\"Hero\": \"Juggernaut\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Juggernaut\",
\"normal\": \"http://i.imgur.com/V0n7BLK.jpg\",
\"FP\": \"http://i.imgur.com/Yy0v7gX.jpg\",
\"25 normal\": \"http://imgur.com/2KWygAL\",
\"25 FP\": \"http://imgur.com/VWSLhDH\"
},
{
\"Hero\": \"Keeper of the Light\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Keeper_of_the_Light\",
\"normal\": \"http://i.imgur.com/7KdhdQ0.jpg\",
\"FP\": \"http://i.imgur.com/FpHXVmo.jpg\",
\"25 normal\": \"http://imgur.com/pzzse31\",
\"25 FP\": \"http://imgur.com/0p9ZgE8\"
},
{
\"Hero\": \"Kunkka\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Kunkka\",
\"normal\": \"http://i.imgur.com/Ns03uaI.jpg\",
\"FP\": \"http://i.imgur.com/ieW964o.jpg\",
\"25 normal\": \"http://imgur.com/5he7ynh\",
\"25 FP\": \"http://imgur.com/zjX1FKF\"
},
{
\"Hero\": \"Legion Commander\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Legion_Commander\",
\"normal\": \"http://i.imgur.com/Hi64hCc.jpg\",
\"FP\": \"http://i.imgur.com/Hi64hCc.jpg\",
\"25 normal\": \"http://imgur.com/liqzv4P\",
\"25 FP\": \"http://imgur.com/liqzv4P\"
},
{
\"Hero\": \"Leshrac\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Leshrac\",
\"normal\": \"http://i.imgur.com/URh7chj.jpg\",
\"FP\": \"http://i.imgur.com/7kUgQpE.jpg\",
\"25 normal\": \"http://imgur.com/biv6XPX\",
\"25 FP\": \"http://imgur.com/EkbIGk3\"
},
{
\"Hero\": \"Lich\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Lich\",
\"normal\": \"http://i.imgur.com/YrUTN6N.jpg\",
\"FP\": \"http://i.imgur.com/ttGMTkj.jpg\",
\"25 normal\": \"http://imgur.com/Q4vZJTK\",
\"25 FP\": \"http://imgur.com/Ltl1DMt\"
},
{
\"Hero\": \"Lifestealer\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Lifestealer\",
\"normal\": \"http://i.imgur.com/Qf1AVqX.jpg\",
\"FP\": \"http://i.imgur.com/5aiAdzp.jpg\",
\"25 normal\": \"http://imgur.com/KLfrySC\",
\"25 FP\": \"http://imgur.com/48f1gGv\"
},
{
\"Hero\": \"Lina\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Lina\",
\"normal\": \"http://i.imgur.com/93foRx7.jpg\",
\"FP\": \"http://i.imgur.com/NVKT3UR.jpg\",
\"25 normal\": \"http://imgur.com/JTvq7vR\",
\"25 FP\": \"http://imgur.com/RFl9EA1\"
},
{
\"Hero\": \"Lion\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Lion\",
\"normal\": \"http://i.imgur.com/mi7dQu6.jpg\",
\"FP\": \"http://i.imgur.com/qbCTnDf.jpg\",
\"25 normal\": \"http://imgur.com/gyzUx1m\",
\"25 FP\": \"http://imgur.com/ratteP1\"
},
{
\"Hero\": \"Lone Druid\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Lone_Druid\",
\"normal\": \"http://i.imgur.com/wKHgWbR.jpg\",
\"FP\": \"http://i.imgur.com/8gvLR8V.jpg\",
\"25 normal\": \"http://imgur.com/vEIE1PK\",
\"25 FP\": \"http://imgur.com/esrUXgM\"
},
{
\"Hero\": \"Luna\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Luna\",
\"normal\": \"http://i.imgur.com/oZtMqZx.jpg\",
\"FP\": \"http://i.imgur.com/HPF8djM.jpg\",
\"25 normal\": \"http://imgur.com/eMhj2TQ\",
\"25 FP\": \"http://imgur.com/y5NklQm\"
},
{
\"Hero\": \"Lycanthrope\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Lycanthrope\",
\"normal\": \"http://i.imgur.com/kNaJFFu.jpg\",
\"FP\": \"http://i.imgur.com/W9YBXWN.jpg\",
\"25 normal\": \"http://imgur.com/D8F0ice\",
\"25 FP\": \"http://imgur.com/iq2DJDB\"
},
{
\"Hero\": \"Magnus\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Magnus\",
\"normal\": \"http://i.imgur.com/in2eeWp.jpg\",
\"FP\": \"http://i.imgur.com/oqb2Ko3.jpg\",
\"25 normal\": \"http://imgur.com/S5VIwVY\",
\"25 FP\": \"http://imgur.com/RPk8vPr\"
},
{
\"Hero\": \"Medusa\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Medusa\",
\"normal\": \"http://i.imgur.com/Eej15As.jpg\",
\"FP\": \"http://i.imgur.com/3KzhHHZ.jpg\",
\"25 normal\": \"http://imgur.com/tlxeAJM\",
\"25 FP\": \"http://imgur.com/1TMRG8X\"
},
{
\"Hero\": \"Meepo\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Meepo\",
\"normal\": \"http://i.imgur.com/O4PEGwu.jpg\",
\"FP\": \"http://i.imgur.com/6HTr3E1.jpg\",
\"25 normal\": \"http://imgur.com/fIb8mjr\",
\"25 FP\": \"http://imgur.com/fjKiMpO\"
},
{
\"Hero\": \"Mirana\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Mirana\",
\"normal\": \"http://i.imgur.com/1N6xQt7.jpg\",
\"FP\": \"http://i.imgur.com/jeHFAkh.jpg\",
\"25 normal\": \"http://imgur.com/W52qToV\",
\"25 FP\": \"http://imgur.com/rmA4igp\"
},
{
\"Hero\": \"Morphling\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Morphling\",
\"normal\": \"http://i.imgur.com/rgweJs3.jpg\",
\"FP\": \"http://i.imgur.com/JeBsmRZ.jpg\",
\"25 normal\": \"http://imgur.com/jwdgV1W\",
\"25 FP\": \"http://imgur.com/NiZj2qn\"
},
{
\"Hero\": \"Naga Siren\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Naga_Siren\",
\"normal\": \"http://i.imgur.com/BwNTNIj.jpg\",
\"FP\": \"http://i.imgur.com/RQf4yYQ.jpg\",
\"25 normal\": \"http://imgur.com/0tuoTjV\",
\"25 FP\": \"http://imgur.com/w0keEnL\"
},
{
\"Hero\": \"Natures Prophet\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Natures_Prophet\",
\"normal\": \"http://i.imgur.com/nq6Afoc.jpg\",
\"FP\": \"http://i.imgur.com/JD9EVR5.jpg\",
\"25 normal\": \"http://imgur.com/YZfWXXK\",
\"25 FP\": \"http://imgur.com/v6oZS5a\"
},
{
\"Hero\": \"Necrophos\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Necrophos\",
\"normal\": \"http://i.imgur.com/lBixCEa.jpg\",
\"FP\": \"http://i.imgur.com/3qfUXCV.jpg\",
\"25 normal\": \"http://imgur.com/9TfANy5\",
\"25 FP\": \"http://imgur.com/KfBL0g1\"
},
{
\"Hero\": \"Night Stalker\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Night_Stalker\",
\"normal\": \"http://i.imgur.com/YcVLtBt.jpg\",
\"FP\": \"http://i.imgur.com/hLHmAH2.jpg\",
\"25 normal\": \"http://imgur.com/9rNBBIp\",
\"25 FP\": \"http://imgur.com/RDU2vMe\"
},
{
\"Hero\": \"Nyx Assassin\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Nyx_Assassin\",
\"normal\": \"http://i.imgur.com/xq6yDlp.jpg\",
\"FP\": \"http://i.imgur.com/umRotVv.jpg\",
\"25 normal\": \"http://imgur.com/yz4sS64\",
\"25 FP\": \"http://imgur.com/zfrbh9b\"
},
{
\"Hero\": \"Ogre Magi\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Ogre_Magi\",
\"normal\": \"http://i.imgur.com/R48vbCR.jpg\",
\"FP\": \"http://i.imgur.com/4XEwy9E.jpg\",
\"25 normal\": \"http://imgur.com/DF5eNJg\",
\"25 FP\": \"http://imgur.com/7i2ew3m\"
},
{
\"Hero\": \"Omniknight\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Omniknight\",
\"normal\": \"http://i.imgur.com/s1LOPnK.jpg\",
\"FP\": \"http://i.imgur.com/Tb6amRx.jpg\",
\"25 normal\": \"http://imgur.com/dSeS9Dd\",
\"25 FP\": \"http://imgur.com/DgvsvpC\"
},
{
\"Hero\": \"Oracle\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Oracle\",
\"normal\": \"http://i.imgur.com/9yshPde.jpg\",
\"FP\": \"http://i.imgur.com/9yshPde.jpg\",
\"25 normal\": \"http://imgur.com/UicXZJt\",
\"25 FP\": \"http://imgur.com/UicXZJt\"
},
{
\"Hero\": \"Outworld Devourer\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Outworld_Devourer\",
\"normal\": \"http://i.imgur.com/WGEZmY1.jpg\",
\"FP\": \"http://i.imgur.com/4diaNXc.jpg\",
\"25 normal\": \"http://imgur.com/NjGxfyo\",
\"25 FP\": \"http://imgur.com/tM1ETYF\"
},
{
\"Hero\": \"Phantom Assassin\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Phantom_Assassin\",
\"normal\": \"http://i.imgur.com/lITRJUI.jpg\",
\"FP\": \"http://i.imgur.com/lj6ug2T.jpg\",
\"25 normal\": \"http://imgur.com/MtxRwh7\",
\"25 FP\": \"http://imgur.com/aUc3iBu\"
},
{
\"Hero\": \"Phantom Lancer\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Phantom_Lancer\",
\"normal\": \"http://i.imgur.com/wnQ7xnD.jpg\",
\"FP\": \"http://i.imgur.com/DReC8NA.jpg\",
\"25 normal\": \"http://imgur.com/h0DEVC3\",
\"25 FP\": \"http://imgur.com/yK92i6V\"
},
{
\"Hero\": \"Phoenix\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Phoenix\",
\"normal\": \"http://i.imgur.com/jI4B1A3.jpg\",
\"FP\": \"http://i.imgur.com/jI4B1A3.jpg\",
\"25 normal\": \"http://imgur.com/pahKpjV\",
\"25 FP\": \"http://imgur.com/pahKpjV\"
},
{
\"Hero\": \"Puck\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Puck\",
\"normal\": \"http://i.imgur.com/BlaR81H.jpg\",
\"FP\": \"http://i.imgur.com/4Ecpiy9.jpg\",
\"25 normal\": \"http://imgur.com/UwBTcEp\",
\"25 FP\": \"http://imgur.com/AfBZQEm\"
},
{
\"Hero\": \"Pudge\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Pudge\",
\"normal\": \"http://i.imgur.com/MobMpiC.jpg\",
\"FP\": \"http://i.imgur.com/iSZ32TJ.jpg\",
\"25 normal\": \"http://imgur.com/SaJFQGY\",
\"25 FP\": \"http://imgur.com/jxiU4Qj\"
},
{
\"Hero\": \"Pugna\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Pugna\",
\"normal\": \"http://i.imgur.com/UqdH4FU.jpg\",
\"FP\": \"http://i.imgur.com/2Tcz2f9.jpg\",
\"25 normal\": \"http://imgur.com/IvzlUBB\",
\"25 FP\": \"http://imgur.com/eHCXp7h\"
},
{
\"Hero\": \"Queen of Pain\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Queen_of_Pain\",
\"normal\": \"http://i.imgur.com/7F4QmhM.jpg\",
\"FP\": \"http://i.imgur.com/PKPAFMF.jpg\",
\"25 normal\": \"http://imgur.com/hdg9t7w\",
\"25 FP\": \"http://imgur.com/NT7OQ2t\"
},
{
\"Hero\": \"Razor\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Razor\",
\"normal\": \"http://i.imgur.com/5n0Fqkr.jpg\",
\"FP\": \"http://i.imgur.com/zDdoXS6.jpg\",
\"25 normal\": \"http://imgur.com/O8k1ITo\",
\"25 FP\": \"http://imgur.com/CokYuvr\"
},
{
\"Hero\": \"Riki\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Riki\",
\"normal\": \"http://i.imgur.com/mfHwiU3.jpg\",
\"FP\": \"http://i.imgur.com/FQuolEy.jpg\",
\"25 normal\": \"http://imgur.com/pnaofgy\",
\"25 FP\": \"http://imgur.com/Bja73HY\"
},
{
\"Hero\": \"Rubick\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Rubick\",
\"normal\": \"http://i.imgur.com/0J7kCV7.jpg\",
\"FP\": \"http://i.imgur.com/nVcJC8T.jpg\",
\"25 normal\": \"http://imgur.com/IwQ7elI\",
\"25 FP\": \"http://imgur.com/3NTc41p\"
},
{
\"Hero\": \"Sand King\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Sand_King\",
\"normal\": \"http://i.imgur.com/TfIcthz.jpg\",
\"FP\": \"http://i.imgur.com/wOaMAqv.jpg\",
\"25 normal\": \"http://imgur.com/RppLvQs\",
\"25 FP\": \"http://imgur.com/6SPA7nh\"
},
{
\"Hero\": \"Shadow Demon\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Shadow_Demon\",
\"normal\": \"http://i.imgur.com/JGMItCU.jpg\",
\"FP\": \"http://i.imgur.com/M5neOb3.jpg\",
\"25 normal\": \"http://imgur.com/aLkfUgS\",
\"25 FP\": \"http://imgur.com/bHPPmF6\"
},
{
\"Hero\": \"Shadow Fiend\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Shadow_Fiend\",
\"normal\": \"http://i.imgur.com/fZ2vA2U.jpg\",
\"FP\": \"http://i.imgur.com/jEG8ZZY.jpg\",
\"25 normal\": \"http://imgur.com/I4Icx9P\",
\"25 FP\": \"http://imgur.com/a7ZZe4g\"
},
{
\"Hero\": \"Shadow Shaman\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Shadow_Shaman\",
\"normal\": \"http://i.imgur.com/RHyb3tQ.jpg\",
\"FP\": \"http://i.imgur.com/mMEvztD.jpg\",
\"25 normal\": \"http://imgur.com/nwahnqw\",
\"25 FP\": \"http://imgur.com/f5kCicI\"
},
{
\"Hero\": \"Silencer\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Silencer\",
\"normal\": \"http://i.imgur.com/4TGWFM5.jpg\",
\"FP\": \"http://i.imgur.com/rNa4qG2.jpg\",
\"25 normal\": \"http://imgur.com/WuTACp4\",
\"25 FP\": \"http://imgur.com/CmwD0OC\"
},
{
\"Hero\": \"Skywrath Mage\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Skywrath_Mage\",
\"normal\": \"http://i.imgur.com/pdpkynO.jpg\",
\"FP\": \"http://i.imgur.com/4yLh2ve.jpg\",
\"25 normal\": \"http://imgur.com/HigSwZq\",
\"25 FP\": \"http://imgur.com/v3tDt0D\"
},
{
\"Hero\": \"Slardar\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Slardar\",
\"normal\": \"http://i.imgur.com/fDzQ3QC.jpg\",
\"FP\": \"http://i.imgur.com/UM6hM3J.jpg\",
\"25 normal\": \"http://imgur.com/CFYgG5a\",
\"25 FP\": \"http://imgur.com/RBsBLGf\"
},
{
\"Hero\": \"Slark\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Slark\",
\"normal\": \"http://i.imgur.com/6p7iYkp.jpg\",
\"FP\": \"http://i.imgur.com/N27T6jl.jpg\",
\"25 normal\": \"http://imgur.com/dNis41q\",
\"25 FP\": \"http://imgur.com/v4vd6lK\"
},
{
\"Hero\": \"Sniper\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Sniper\",
\"normal\": \"http://i.imgur.com/ZCzPq3B.jpg\",
\"FP\": \"http://i.imgur.com/5qR2JAR.jpg\",
\"25 normal\": \"http://imgur.com/PqJbCn0\",
\"25 FP\": \"http://imgur.com/FHMpcJO\"
},
{
\"Hero\": \"Spectre\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Spectre\",
\"normal\": \"http://i.imgur.com/RoyYU7l.jpg\",
\"FP\": \"http://i.imgur.com/ub1q8qU.jpg\",
\"25 normal\": \"http://imgur.com/RU1FpEA\",
\"25 FP\": \"http://imgur.com/HXVjlWQ\"
},
{
\"Hero\": \"Spirit Breaker\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Spirit_Breaker\",
\"normal\": \"http://i.imgur.com/iORQbq5.jpg\",
\"FP\": \"http://i.imgur.com/QdrZPvk.jpg\",
\"25 normal\": \"http://imgur.com/QNgwNQi\",
\"25 FP\": \"http://imgur.com/r0UB3KS\"
},
{
\"Hero\": \"Storm Spirit\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Storm_Spirit\",
\"normal\": \"http://i.imgur.com/MoeOL8D.jpg\",
\"FP\": \"http://i.imgur.com/fZF3xZs.jpg\",
\"25 normal\": \"http://imgur.com/crjpIDx\",
\"25 FP\": \"http://imgur.com/pK258gY\"
},
{
\"Hero\": \"Sven\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Sven\",
\"normal\": \"http://i.imgur.com/rEo0Xym.jpg\",
\"FP\": \"http://i.imgur.com/YmeZh1X.jpg\",
\"25 normal\": \"http://imgur.com/PtdG02J\",
\"25 FP\": \"http://imgur.com/oDVO1Ti\"
},
{
\"Hero\": \"Techies\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Techies\",
\"normal\": \"http://i.imgur.com/yye1pGQ.jpg\",
\"FP\": \"http://i.imgur.com/yye1pGQ.jpg\",
\"25 normal\": \"http://imgur.com/MvfvlzN\",
\"25 FP\": \"http://imgur.com/MvfvlzN\"
},
{
\"Hero\": \"Templar Assassin\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Templar_Assassin\",
\"normal\": \"http://i.imgur.com/X50LlVd.jpg\",
\"FP\": \"http://i.imgur.com/wUnBapC.jpg\",
\"25 normal\": \"http://imgur.com/Zb7tZie\",
\"25 FP\": \"http://imgur.com/9Ff3X7j\"
},
{
\"Hero\": \"Terrorblade\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Terrorblade\",
\"normal\": \"http://i.imgur.com/6usScDo.jpg\",
\"FP\": \"http://i.imgur.com/6usScDo.jpg\",
\"25 normal\": \"http://imgur.com/W9qGDAd\",
\"25 FP\": \"http://imgur.com/W9qGDAd\"
},
{
\"Hero\": \"Tidehunter\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Tidehunter\",
\"normal\": \"http://i.imgur.com/R607tv2.jpg\",
\"FP\": \"http://i.imgur.com/Vw63mYl.jpg\",
\"25 normal\": \"http://imgur.com/LdRvEQA\",
\"25 FP\": \"http://imgur.com/OcMRzff\"
},
{
\"Hero\": \"Timbersaw\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Timbersaw\",
\"normal\": \"http://i.imgur.com/W1WSwpk.jpg\",
\"FP\": \"http://i.imgur.com/ZVclujw.jpg\",
\"25 normal\": \"http://imgur.com/3MdczIs\",
\"25 FP\": \"http://imgur.com/jyJvXlv\"
},
{
\"Hero\": \"Tinker\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Tinker\",
\"normal\": \"http://i.imgur.com/5EPYUGL.jpg\",
\"FP\": \"http://i.imgur.com/HTAhcrZ.jpg\",
\"25 normal\": \"http://imgur.com/jAUffE3\",
\"25 FP\": \"http://imgur.com/BQlZS5A\"
},
{
\"Hero\": \"Tiny\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Tiny\",
\"normal\": \"http://i.imgur.com/gYUDEVr.jpg\",
\"FP\": \"http://i.imgur.com/5UWDYfb.jpg\",
\"25 normal\": \"http://imgur.com/F14Jj6X\",
\"25 FP\": \"http://imgur.com/5eQmIwC\"
},
{
\"Hero\": \"Treant Protector\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Treant_Protector\",
\"normal\": \"http://i.imgur.com/BgdJy9m.jpg\",
\"FP\": \"http://i.imgur.com/jVUJJkN.jpg\",
\"25 normal\": \"http://imgur.com/ed3vTER\",
\"25 FP\": \"http://imgur.com/qeI45LD\"
},
{
\"Hero\": \"Troll Warlord\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Troll_Warlord\",
\"normal\": \"http://i.imgur.com/BrM4ETs.jpg\",
\"FP\": \"http://i.imgur.com/2pk7vYE.jpg\",
\"25 normal\": \"http://imgur.com/oTTXaNy\",
\"25 FP\": \"http://imgur.com/8DD2LkX\"
},
{
\"Hero\": \"Tusk\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Tusk\",
\"normal\": \"http://i.imgur.com/h6BjbI9.jpg\",
\"FP\": \"http://i.imgur.com/hTRxCGA.jpg\",
\"25 normal\": \"http://imgur.com/Uno2Z41\",
\"25 FP\": \"http://imgur.com/hvqAeBu\"
},
{
\"Hero\": \"Undying\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Undying\",
\"normal\": \"http://i.imgur.com/uom1lLP.jpg\",
\"FP\": \"http://i.imgur.com/iB1IK8z.jpg\",
\"25 normal\": \"http://imgur.com/aQ9wHOD\",
\"25 FP\": \"http://imgur.com/icv28I2\"
},
{
\"Hero\": \"Ursa\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Ursa\",
\"normal\": \"http://i.imgur.com/7BzfsPG.jpg\",
\"FP\": \"http://i.imgur.com/bTzmS3y.jpg\",
\"25 normal\": \"http://imgur.com/zJPHPZD\",
\"25 FP\": \"http://imgur.com/L0iQFDj\"
},
{
\"Hero\": \"Vengeful Spirit\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Vengeful_Spirit\",
\"normal\": \"http://i.imgur.com/3KImgJq.jpg\",
\"FP\": \"http://i.imgur.com/SgmBuac.jpg\",
\"25 normal\": \"http://imgur.com/uxUM6En\",
\"25 FP\": \"http://imgur.com/AYiqknV\"
},
{
\"Hero\": \"Venomancer\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Venomancer\",
\"normal\": \"http://i.imgur.com/ncMDHrF.jpg\",
\"FP\": \"http://i.imgur.com/geAVeQ9.jpg\",
\"25 normal\": \"http://imgur.com/9JOnltS\",
\"25 FP\": \"http://imgur.com/k0PVdCc\"
},
{
\"Hero\": \"Viper\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Viper\",
\"normal\": \"http://i.imgur.com/NaUDrPc.jpg\",
\"FP\": \"http://i.imgur.com/A9i0R7g.jpg\",
\"25 normal\": \"http://imgur.com/loDsplA\",
\"25 FP\": \"http://imgur.com/aUYsrAs\"
},
{
\"Hero\": \"Visage\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Visage\",
\"normal\": \"http://i.imgur.com/2jOrS65.jpg\",
\"FP\": \"http://i.imgur.com/ePvhxtJ.jpg\",
\"25 normal\": \"http://imgur.com/RO0O2wT\",
\"25 FP\": \"http://imgur.com/UObjDzm\"
},
{
\"Hero\": \"Warlock\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Warlock\",
\"normal\": \"http://i.imgur.com/lhUmZxa.jpg\",
\"FP\": \"http://i.imgur.com/EkXuwfA.jpg\",
\"25 normal\": \"http://imgur.com/ZRRw9li\",
\"25 FP\": \"http://imgur.com/cISmeag\"
},
{
\"Hero\": \"Weaver\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Weaver\",
\"normal\": \"http://i.imgur.com/AB51I7H.jpg\",
\"FP\": \"http://i.imgur.com/G4oJFPi.jpg\",
\"25 normal\": \"http://imgur.com/0oZayTW\",
\"25 FP\": \"http://imgur.com/VHHHceY\"
},
{
\"Hero\": \"Windranger\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Windranger\",
\"normal\": \"http://i.imgur.com/X1sntKP.jpg\",
\"FP\": \"http://i.imgur.com/Bu2PW5R.jpg\",
\"25 normal\": \"http://imgur.com/AEL7tTe\",
\"25 FP\": \"http://imgur.com/CojLJA3\"
},
{
\"Hero\": \"Witch Doctor\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Witch_Doctor\",
\"normal\": \"http://i.imgur.com/LwElquC.jpg\",
\"FP\": \"http://i.imgur.com/dvcTarB.jpg\",
\"25 normal\": \"http://imgur.com/QDsTSac\",
\"25 FP\": \"http://imgur.com/MclVA1l\"
},
{
\"Hero\": \"Wraith King\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Wraith_King\",
\"normal\": \"http://i.imgur.com/RoxAwM4.jpg\",
\"FP\": \"http://i.imgur.com/Brc0GY6.jpg\",
\"25 normal\": \"http://imgur.com/JT5szEk\",
\"25 FP\": \"http://imgur.com/qUusKzu\"
},
{
\"Hero\": \"Zeus\",
\"undefined\": \"http://wiki.teamliquid.net/dota2/Zeus\",
\"normal\": \"http://i.imgur.com/bedBw7c.jpg\",
\"FP\": \"http://i.imgur.com/nipDblP.jpg\",
\"25 normal\": \"http://imgur.com/4oQuYma\",
\"25 FP\": \"http://imgur.com/Ka59HnQ\"
}
]"
