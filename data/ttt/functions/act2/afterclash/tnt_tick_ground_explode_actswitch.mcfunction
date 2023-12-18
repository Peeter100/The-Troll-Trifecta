fill -2 30 165 -4 32 165 air destroy
setblock -1 31 165 air destroy
fill -3 33 165 -4 33 165 air destroy
setblock -5 32 165 air destroy
clear @a
title @a reset
title @a title {"text":"The Troll Trifecta","color":"yellow","bold":true}
advancement grant @a only ttt:act2
title @a subtitle {"text":"Act 3 - Mistrustful Magmas","color":"red"}
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1000
tag @s remove gotwand
tag @s remove hijackdeathseq
tag @a remove noheal
tag @a remove hungertext
tag @a remove 1hpchallenge
effect clear @a
kill @e[type=item]
kill @e[tag=forkill]
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
scoreboard players set @s dialoguetime 0
scoreboard players set @s dialogueseq 0
scoreboard players set @s securitytime 0
scoreboard players set @s acttimer 0
scoreboard players set @s act 3
scoreboard players set @s actpart 1
scoreboard players set @s[scores={actunlocked=..2}] actunlocked 3
scoreboard players reset @a Game_Choice
scoreboard players reset @a drinkpotion
scoreboard players reset @a mcdonalds
function ttt:reset/act3_literal