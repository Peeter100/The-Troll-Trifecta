# Executes as server, at player
### 3040..3049

scoreboard players set @s acttimer 3040
scoreboard players set @s am_gametimer 0
scoreboard players set @s am_gamescore1 0
scoreboard players set @s am_gamescore2 0
scoreboard players set @s am_gamescore3 0
scoreboard players set @s am_gamescore4 0
scoreboard players set @s am_gamescore5 0
scoreboard players set @s am_gamescore6 0
scoreboard players set @s am_gamescore7 0

bossbar set minecraft:amogbar name [{"text":"\uE003 ","color":"white"},{"text":"--s  ","color":"yellow"},{"text":"Time for a Task remaining: ","color":"red"},{"text":"\uE004 ","color":"white"},{"text":"--s","color":"yellow"}]
execute as @e[tag=gameai] at @s run data merge entity @s {NoAI:1b,Health:100.0f}
scoreboard players reset @a Sabotage_ID
clear @a carrot_on_a_stick
tag @a remove offhandnoupdate
kill @e[type=item]

scoreboard players operation @s am_gameid = @e[type=marker,tag=taskmarker,limit=1,sort=nearest] npcbodytp
execute unless entity @e[tag=playerloc] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","playerloc"],DisabledSlots:4144959}
tp @e[type=armor_stand,tag=playerloc] @p[tag=amplayer]
tp @a[tag=amplayer] 37 8 103

execute unless score @s st_am_forceid matches 1..12 run function ttt:amogus/minigames/convertid/story_mode
execute if score @s st_am_forceid matches 1..12 unless entity @e[type=marker,tag=amhost,tag=hasforcedid] run function ttt:amogus/minigames/convertid/specified
execute unless entity @s[tag=forcedtaskpregr] run scoreboard players add @s am_gamegroupseq 1

scoreboard players set @s am_gameimportant 0
execute if score @s am_gameid matches 1 run scoreboard players set @s am_gameimportant 1
execute if score @s am_gameid matches 10 run scoreboard players set @s am_gameimportant 1
function ttt:amogus/levelling/force_crime_rate


# AI
execute if score @s am_sabid matches 0 run function ttt:amogus/minigames/spread_ais


# TASK SUMMONS
execute if score @s am_gameid matches 1 at @s run function ttt:amogus/minigames/id1/summon_ents
execute if score @s am_gameid matches 2 at @s run function ttt:amogus/minigames/id2/summon_ents
execute if score @s am_gameid matches 3 at @s run function ttt:amogus/minigames/id3/summon_ents
execute if score @s am_gameid matches 4 at @s run function ttt:amogus/minigames/id4/summon_ents
execute if score @s am_gameid matches 5 at @s run function ttt:amogus/minigames/id5/summon_ents
execute if score @s am_gameid matches 6 at @s run function ttt:amogus/minigames/id6/summon_ents
execute if score @s am_gameid matches 7 at @s run function ttt:amogus/minigames/id7/summon_ents
execute if score @s am_gameid matches 8 at @s run function ttt:amogus/minigames/id8/summon_ents
## execute if score @s am_gameid matches 9 at @s run function ttt:amogus/minigames/id9/summon_ents
execute if score @s am_gameid matches 10 at @s run function ttt:amogus/minigames/id10/summon_ents
execute if score @s am_gameid matches 11 at @s run function ttt:amogus/minigames/id11/summon_ents
execute if score @s am_gameid matches 12 at @s run function ttt:amogus/minigames/id12/summon_ents