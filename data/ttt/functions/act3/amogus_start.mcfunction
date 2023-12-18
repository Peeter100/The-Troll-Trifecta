# Should be run as server
### tp @a[team=p] -3 30 204

scoreboard players set @s actpart 2
scoreboard players set @s dialoguetime 0
scoreboard players set @s dialogueseq 0
scoreboard players set @s acttimer 52
scoreboard players set @s am_maintimer 0
scoreboard players set @s am_gametimer 0
scoreboard players set @s am_gameid 0
scoreboard players set @s am_gamescore1 0
scoreboard players set @s am_gamescore2 0
scoreboard players set @s am_gamescore3 0
scoreboard players set @s am_gamescore4 0
scoreboard players set @s am_gamescore5 0
scoreboard players set @s am_gamescore6 0
scoreboard players set @s am_gamescore7 0

tag @a remove offhandnoupdate
tag @a remove am_cankill
tag @a remove am_canvent
tag @a remove am_canreport
tag @a remove am_cantask

scoreboard players set @s am_selfreports 0
scoreboard players set @s am_usednearby 0
scoreboard players set @s am_susscore 10
scoreboard players set @s am_lights 1
#scoreboard players set @s am_killcool 600
scoreboard players set @s am_location 0
scoreboard players set @s am_ventid 0
scoreboard players set @s am_sabid 0
scoreboard players set @s am_sabtimer 0
scoreboard players set @s am_crewmates 9
scoreboard players set @s am_secondworth 20
scoreboard players set @s am_sabcool 200
scoreboard players set @s am_sabfix 0
scoreboard players set @s am_sabfix2 0
scoreboard players set @s am_visualizer 0
scoreboard players set @s am_helpmeter 3
scoreboard players set @s am_blackoutkills 0

bossbar set amogbar value 1800
scoreboard players set @s am_checkuptimer 1800
scoreboard players set @s am_gameimportant 0

scoreboard players operation @s am_killcool = @s am_lvl_killcool
execute if score @s am_seentrollge matches 2.. run scoreboard players set @s am_seentrollge 1
execute if score @s am_lvl_crewmates matches ..7 run scoreboard players set @s am_blackoutkills 1
execute if score @s am_lvl_crewmates matches ..7 run scoreboard players set @s am_selfreports 1

scoreboard players reset * am_ai_location
scoreboard players reset * am_ai_d_location
scoreboard players reset * am_ai_l_location
scoreboard players reset * am_ai_noticeddoor
scoreboard players reset * am_ai_noticedtime
scoreboard players reset * am_ai_color
scoreboard players reset * am_ai_timespent
scoreboard players reset * am_sabrange

####scoreboard players set @s am_iconpref 1
####scoreboard players set @a[team=p] am_location 0

clear @a
scoreboard players set @a[team=p] weight 1
scoreboard players set @a[team=p] villinteract 0
scoreboard players reset @a Answer_Q1
scoreboard players reset @a Game_Choice
scoreboard players reset @a Sabotage_ID
kill @e[tag=forkill]
kill @e[type=item]

setblock 18 25 161 oak_stairs[facing=west,half=top,shape=straight]
fill 29 21 157 29 25 157 barrier
setblock 37 21 161 crafting_table

tp @a 37 8 103
weather clear