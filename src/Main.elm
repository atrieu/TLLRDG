module TLDraft where

import Graphics.Element (..)
import Graphics.Input (dropDown)
import Signal
import Signal (Signal, (<~), (~))
import Text
import Window

main : Signal Element
main = display <~ Window.width
                ~ Signal.subscribe sidec
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

rpick1 : Signal.Channel String
rpick1 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

rpick2 : Signal.Channel String
rpick2 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

rpick3 : Signal.Channel String
rpick3 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

rpick4 : Signal.Channel String
rpick4 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

rpick5 : Signal.Channel String
rpick5 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

rban1 : Signal.Channel String
rban1 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

rban2 : Signal.Channel String
rban2 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

rban3 : Signal.Channel String
rban3 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

rban4 : Signal.Channel String
rban4 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

rban5 : Signal.Channel String
rban5 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

dpick1 : Signal.Channel String
dpick1 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

dpick2 : Signal.Channel String
dpick2 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

dpick3 : Signal.Channel String
dpick3 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

dpick4 : Signal.Channel String
dpick4 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

dpick5 : Signal.Channel String
dpick5 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

dban1 : Signal.Channel String
dban1 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

dban2 : Signal.Channel String
dban2 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

dban3 : Signal.Channel String
dban3 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

dban4 : Signal.Channel String
dban4 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

dban5 : Signal.Channel String
dban5 = Signal.channel "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"

display : Int -> Bool -> String -> String -> String -> String -> String ->
          String -> String -> String -> String -> String ->
          String -> String -> String -> String -> String ->
          String -> String -> String -> String -> String -> Element
display winW side radpick1 radpick2 radpick3 radpick4 radpick5
        radban1 radban2 radban3 radban4 radban5
        dipick1 dipick2 dipick3 dipick4 dipick5
        diban1 diban2 diban3 diban4 diban5 =
          flow down [
            Text.fromString "Team Liquid Live Report Draft Generator"
            |> Text.bold
            |> Text.centered
            |> container winW 20 midTop
            , dropDown (Signal.send sidec) sides
            |> container winW 20 midTop
            , flow right [
                flow down [
                  Text.fromString "Radiant Bans"
                  |> Text.leftAligned
                  , dropDown (Signal.send rban1) heroes
                  , dropDown (Signal.send rban2) heroes
                  , dropDown (Signal.send rban3) heroes
                  , dropDown (Signal.send rban4) heroes
                  , dropDown (Signal.send rban5) heroes ]
                , spacer 30 30
                , flow down [
                  Text.fromString "Radiant Picks"
                  |> Text.leftAligned
                  , dropDown (Signal.send rpick1) heroes
                  , dropDown (Signal.send rpick2) heroes
                  , dropDown (Signal.send rpick3) heroes
                  , dropDown (Signal.send rpick4) heroes
                  , dropDown (Signal.send rpick5) heroes ]
                , spacer 30 30
                , flow down [
                  Text.fromString "Dire Bans"
                  |> Text.leftAligned
                  , dropDown (Signal.send dban1) heroes
                  , dropDown (Signal.send dban2) heroes
                  , dropDown (Signal.send dban3) heroes
                  , dropDown (Signal.send dban4) heroes
                  , dropDown (Signal.send dban5) heroes ]
                , spacer 30 30
                , flow down [
                  Text.fromString "Dire Picks"
                  |> Text.leftAligned
                  , dropDown (Signal.send dpick1) heroes
                  , dropDown (Signal.send dpick2) heroes
                  , dropDown (Signal.send dpick3) heroes
                  , dropDown (Signal.send dpick4) heroes
                  , dropDown (Signal.send dpick5) heroes ]
              ] |> container winW 200 midTop
          , (if side then "[center]" ++ radpick1 ++ radpick2 ++ radpick3 ++ radpick4 ++ radpick5 ++ "[img]http://i.imgur.com/H1j7SBU.png[/img]" ++ dipick1 ++ dipick2 ++ dipick3 ++ dipick4 ++ dipick5 ++ "\n" ++ "[img]http://i.imgur.com/vvshEHz.png[/img]" ++ "\n" ++ radban1 ++ radban2 ++ radban3 ++ radban4 ++ radban5 ++ "[img]http://i.imgur.com/4HTXS8I.png[/img]" ++ diban1 ++ diban2 ++ diban3 ++ diban4 ++ diban5 ++ "[/center]"
            else "[center]" ++ dipick1 ++ dipick2 ++ dipick3 ++ dipick4 ++ dipick5 ++ "[img]http://i.imgur.com/H1j7SBU.png[/img]" ++ radpick1 ++ radpick2 ++ radpick3 ++ radpick4 ++ radpick5 ++ "\n" ++ "[img]http://i.imgur.com/M0IcDHl.png[/img]" ++ "\n" ++ diban1 ++ diban2 ++ diban3 ++ diban4 ++ diban5 ++ "[img]http://i.imgur.com/4HTXS8I.png[/img]" ++ radban1 ++ radban2 ++ radban3 ++ radban4 ++ radban5 ++ "[/center]")
          |> Text.fromString
          |> Text.leftAligned
          |> container winW 500 midTop
          ]

(=>) : a -> b -> (a, b)
(=>) a b = (a, b)

sides : List (String, Bool)
sides =
  [ "Radiant left" => True
  , "Dire left" => False
  ]

heroes : List (String, String)
heroes =
  [ "Abaddon" => "[url=http://wiki.teamliquid.net/dota2/Abaddon][h]abaddon[/h][/url]"
  , "Alchemist" => "[url=http://wiki.teamliquid.net/dota2/Alchemist][h]alchemist[/h][/url]",
  "Ancient Apparition" => "[url=http://wiki.teamliquid.net/dota2/Ancient_Apparition][h]ancientapparition[/h][/url]"
  , "Antimage" => "[url=http://wiki.teamliquid.net/dota2/Antimage][h]antimage[/h][/url]"
  , "Axe" => "[url=http://wiki.teamliquid.net/dota2/Axe][h]axe[/h][/url]"
  , "Bane" => "[url=http://wiki.teamliquid.net/dota2/Bane][h]bane[/h][/url]"
  , "Batrider" => "[url=http://wiki.teamliquid.net/dota2/Batrider][h]batrider[/h][/url]"
  , "Beastmaster" => "[url=http://wiki.teamliquid.net/dota2/Beastmaster][h]beastmaster[/h][/url]"
  , "Bloodseeker" => "[url=http://wiki.teamliquid.net/dota2/Bloodseeker][h]bloodseeker[/h][/url]"
  , "Bounty Hunter" => "[url=http://wiki.teamliquid.net/dota2/Bounty_Hunter][h]bountyhunter[/h][/url]"
  , "Brewmaster" => "[url=http://wiki.teamliquid.net/dota2/Brewmaster][h]brewmaster[/h][/url]"
  , "Bristleback" => "[url=http://wiki.teamliquid.net/dota2/Bristleback][h]bristleback[/h][/url]"
  , "Broodmother" => "[url=http://wiki.teamliquid.net/dota2/Broodmother][h]broodmother[/h][/url]"
  , "Centaur Warrunner" => "[url=http://wiki.teamliquid.net/dota2/Centaur_Warrunner][h]centaurwarrunner[/h][/url]"
  , "Chaos Knight" => "[url=http://wiki.teamliquid.net/dota2/Chaos_Knight][h]chaosknight[/h][/url]"
  , "Chen" => "[url=http://wiki.teamliquid.net/dota2/Chen][h]chen[/h][/url]"
  , "Clinkz" => "[url=http://wiki.teamliquid.net/dota2/Clinkz][h]clinkz[/h][/url]"
  , "Clockwerk" => "[url=http://wiki.teamliquid.net/dota2/Clockwerk][h]clockwerk[/h][/url]"
  , "Crystal Maiden" => "[url=http://wiki.teamliquid.net/dota2/Crystal_Maiden][h]crystalmaiden[/h][/url]"
  , "Dark Seer" => "[url=http://wiki.teamliquid.net/dota2/Dark_Seer][h]darkseer[/h][/url]"
  , "Dazzle" => "[url=http://wiki.teamliquid.net/dota2/Dazzle][h]dazzle[/h][/url]"
  , "Death Prophet" => "[url=http://wiki.teamliquid.net/dota2/Death_Prophet][h]deathprophet[/h][/url]"
  , "Disruptor" => "[url=http://wiki.teamliquid.net/dota2/Disruptor][h]disruptor[/h][/url]"
  , "Doom" => "[url=http://wiki.teamliquid.net/dota2/Doom][h]doom[/h][/url]"
  , "Dragon Knight" => "[url=http://wiki.teamliquid.net/dota2/Dragon_Knight][h]dragonknight[/h][/url]"
  , "Drow Ranger" => "[url=http://wiki.teamliquid.net/dota2/Drow_Ranger][h]drowranger[/h][/url]"
  , "Earth Spirit" => "[url=http://wiki.teamliquid.net/dota2/Earth_Spirit][h]earthspirit[/h][/url]"
  , "Earthshaker" => "[url=http://wiki.teamliquid.net/dota2/Earthshaker][h]earthshaker[/h][/url]"
  , "Elder Titan" => "[url=http://wiki.teamliquid.net/dota2/Elder_Titan][h]eldertitan[/h][/url]"
  , "Ember Spirit" => "[url=http://wiki.teamliquid.net/dota2/Ember_Spirit][h]emberspirit[/h][/url]"
  , "Enchantress" => "[url=http://wiki.teamliquid.net/dota2/Enchantress][h]enchantress[/h][/url]"
  , "Enigma" => "[url=http://wiki.teamliquid.net/dota2/Enigma][h]enigma[/h][/url]"
  , "Faceless Void" => "[url=http://wiki.teamliquid.net/dota2/Faceless_Void][h]facelessvoid[/h][/url]"
  , "Gyrocopter" => "[url=http://wiki.teamliquid.net/dota2/Gyrocopter][h]gyrocopter[/h][/url]"
  , "Huskar" => "[url=http://wiki.teamliquid.net/dota2/Huskar][h]huskar[/h][/url]"
  , "Invoker" => "[url=http://wiki.teamliquid.net/dota2/Invoker][h]invoker[/h][/url]"
  , "Io" => "[url=http://wiki.teamliquid.net/dota2/Io][h]io[/h][/url]"
  , "Jakiro" => "[url=http://wiki.teamliquid.net/dota2/Jakiro][h]jakiro[/h][/url]"
  , "Juggernaut" => "[url=http://wiki.teamliquid.net/dota2/Juggernaut][h]juggernaut[/h][/url]"
  , "Keeper of the Light" => "[url=http://wiki.teamliquid.net/dota2/Keeper_of_the_Light][h]keeperofthelight[/h][/url]"
  , "Kunkka" => "[url=http://wiki.teamliquid.net/dota2/Kunkka][h]kunkka[/h][/url]"
  , "Legion Commander" => "[url=http://wiki.teamliquid.net/dota2/Legion_Commander][h]legioncommander[/h][/url]"
  , "Leshrac" => "[url=http://wiki.teamliquid.net/dota2/Leshrac][h]leshrac[/h][/url]"
  , "Lich" => "[url=http://wiki.teamliquid.net/dota2/Lich][h]lich[/h][/url]"
  , "Lifestealer" => "[url=http://wiki.teamliquid.net/dota2/Lifestealer][h]lifestealer[/h][/url]"
  , "Lina" => "[url=http://wiki.teamliquid.net/dota2/Lina][h]lina[/h][/url]"
  , "Lion" => "[url=http://wiki.teamliquid.net/dota2/Lion][h]lion[/h][/url]"
  , "LoneDruid" => "[url=http://wiki.teamliquid.net/dota2/Lone_Druid][h]lonedruid[/h][/url]"
  , "Luna" => "[url=http://wiki.teamliquid.net/dota2/Luna][h]luna[/h][/url]"
  , "Lycanthrope" => "[url=http://wiki.teamliquid.net/dota2/Lycanthrope][h]lycanthrope[/h][/url]"
  , "Magnus" => "[url=http://wiki.teamliquid.net/dota2/Magnus][h]magnus[/h][/url]"
  , "Medusa" => "[url=http://wiki.teamliquid.net/dota2/Medusa][h]medusa[/h][/url]"
  , "Meepo" => "[url=http://wiki.teamliquid.net/dota2/Meepo][h]meepo[/h][/url]"
  , "Mirana" => "[url=http://wiki.teamliquid.net/dota2/Mirana][h]mirana[/h][/url]"
  , "Morphling" => "[url=http://wiki.teamliquid.net/dota2/Morphling][h]morphling[/h][/url]"
  , "Naga Siren" => "[url=http://wiki.teamliquid.net/dota2/Naga_Siren][h]nagasiren[/h][/url]"
  , "Nature's Prophet" => "[url=http://wiki.teamliquid.net/dota2/Natures_Prophet][h]naturesprophet[/h][/url]"
  , "Necrolyte" => "[url=http://wiki.teamliquid.net/dota2/Necrolyte][h]necrolyte[/h][/url]"
  , "Night Stalker" => "[url=http://wiki.teamliquid.net/dota2/Night_Stalker][h]nightstalker[/h][/url]"
  , "Nyx Assassin" => "[url=http://wiki.teamliquid.net/dota2/Nyx_Assassin][h]nyxassassin[/h][/url]"
  , "Ogre Magi" => "[url=http://wiki.teamliquid.net/dota2/Ogre_Magi][h]ogremagi[/h][/url]"
  , "Omniknight" => "[url=http://wiki.teamliquid.net/dota2/Omniknight][h]omniknight[/h][/url]"
  , "Outworld Devourer" => "[url=http://wiki.teamliquid.net/dota2/Outworld_Devourer][h]outworlddevourer[/h][/url]"
  , "Phantom Assassin" => "[url=http://wiki.teamliquid.net/dota2/Phantom_Assassin][h]phantomassassin[/h][/url]"
  , "Phantom Lancer" => "[url=http://wiki.teamliquid.net/dota2/Phantom_Lancer][h]phantomlancer[/h][/url]"
  , "Phoenix" => "[url=http://wiki.teamliquid.net/dota2/Phoenix][h]phoenix[/h][/url]"
  , "Puck" => "[url=http://wiki.teamliquid.net/dota2/Puck][h]puck[/h][/url]"
  , "Pudge" => "[url=http://wiki.teamliquid.net/dota2/Pudge][h]pudge[/h][/url]"
  , "Pugna" => "[url=http://wiki.teamliquid.net/dota2/Pugna][h]pugna[/h][/url]"
  , "Queen of Pain" => "[url=http://wiki.teamliquid.net/dota2/Queen_of_Pain][h]queenofpain[/h][/url]"
  , "Razor" => "[url=http://wiki.teamliquid.net/dota2/Razor][h]razor[/h][/url]"
  , "Riki" => "[url=http://wiki.teamliquid.net/dota2/Riki][h]riki[/h][/url]"
  , "Rubick" => "[url=http://wiki.teamliquid.net/dota2/Rubick][h]rubick[/h][/url]"
  , "Sand King" => "[url=http://wiki.teamliquid.net/dota2/Sand_King][h]sandking[/h][/url]"
  , "Shadow Demon" => "[url=http://wiki.teamliquid.net/dota2/Shadow_Demon][h]shadowdemon[/h][/url]"
  , "Shadow Fiend" => "[url=http://wiki.teamliquid.net/dota2/Shadow_Fiend][h]shadowfiend[/h][/url]"
  , "Shadow Shaman" => "[url=http://wiki.teamliquid.net/dota2/Shadow_Shaman][h]shadowshaman[/h][/url]"
  , "Silencer" => "[url=http://wiki.teamliquid.net/dota2/Silencer][h]silencer[/h][/url]"
  , "Skywrath Mage" => "[url=http://wiki.teamliquid.net/dota2/Skywrath_Mage][h]skywrathmage[/h][/url]"
  , "Slardar" => "[url=http://wiki.teamliquid.net/dota2/Slardar][h]slardar[/h][/url]"
  , "Slark" => "[url=http://wiki.teamliquid.net/dota2/Slark][h]slark[/h][/url]"
  , "Sniper" => "[url=http://wiki.teamliquid.net/dota2/Sniper][h]sniper[/h][/url]"
  , "Spectre" => "[url=http://wiki.teamliquid.net/dota2/Spectre][h]spectre[/h][/url]"
  , "Spirit Breaker" => "[url=http://wiki.teamliquid.net/dota2/Spirit_Breaker][h]spiritbreaker[/h][/url]"
  , "Storm Spirit" => "[url=http://wiki.teamliquid.net/dota2/Storm_Spirit][h]stormspirit[/h][/url]"
  , "Sven" => "[url=http://wiki.teamliquid.net/dota2/Sven][h]sven[/h][/url]"
  , "Techies" => "[url=http://wiki.teamliquid.net/dota2/Techies][h]techies[/h][url]"
  , "Templar Assassin" => "[url=http://wiki.teamliquid.net/dota2/Templar_Assassin][h]templarassassin[/h][/url]"
  , "Terrorblade" => "[url=http://wiki.teamliquid.net/dota2/Terrorblade][h]terrorblade[/h][/url]"
  , "Tidehunter" => "[url=http://wiki.teamliquid.net/dota2/Tidehunter][h]tidehunter[/h][/url]"
  , "Timbersaw" => "[url=http://wiki.teamliquid.net/dota2/Timbersaw][h]timbersaw[/h][/url]"
  , "Tinker" => "[url=http://wiki.teamliquid.net/dota2/Tinker][h]tinker[/h][/url]"
  , "Tiny" => "[url=http://wiki.teamliquid.net/dota2/Tiny][h]tiny[/h][/url]"
  , "Treant Protector" => "[url=http://wiki.teamliquid.net/dota2/Treant_Protector][h]treantprotector[/h][/url]"
  , "Troll Warlord" => "[url=http://wiki.teamliquid.net/dota2/Troll_Warlord][h]trollwarlord[/h][/url]"
  , "Tusk" => "[url=http://wiki.teamliquid.net/dota2/Tusk][h]tusk[/h][/url]"
  , "Undying" => "[url=http://wiki.teamliquid.net/dota2/Undying][h]undying[/h][/url]"
  , "Ursa" => "[url=http://wiki.teamliquid.net/dota2/Ursa][h]ursa[/h][/url]"
  , "Vengeful Spirit" => "[url=http://wiki.teamliquid.net/dota2/Vengeful_Spirit][h]vengefulspirit[/h][/url]"
  , "Venomancer" => "[url=http://wiki.teamliquid.net/dota2/Venomancer][h]venomancer[/h][/url]"
  , "Viper" => "[url=http://wiki.teamliquid.net/dota2/Viper][h]viper[/h][/url]"
  , "Visage" => "[url=http://wiki.teamliquid.net/dota2/Visage][h]visage[/h][/url]"
  , "Warlock" => "[url=http://wiki.teamliquid.net/dota2/Warlock][h]warlock[/h][/url]"
  , "Weaver" => "[url=http://wiki.teamliquid.net/dota2/Weaver][h]weaver[/h][/url]"
  , "Windranger" => "[url=http://wiki.teamliquid.net/dota2/Windranger][h]windranger[/h][/url]"
  , "Witch Doctor" => "[url=http://wiki.teamliquid.net/dota2/Witch_Doctor][h]witchdoctor[/h][/url]"
  , "Wraith King" => "[url=http://wiki.teamliquid.net/dota2/Wraith_King][h]wraith[/h][/url]"
  , "Zeus" => "[url=http://wiki.teamliquid.net/dota2/Zeus][h]zeus[/h][/url]"
  ]
