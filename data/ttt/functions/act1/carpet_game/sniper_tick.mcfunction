scoreboard players add @s am_maintimer 1

execute if entity @s[scores={am_maintimer=-1000}] run function ttt:act1/carpet_game/return_from_stun
execute if entity @s[scores={am_maintimer=0..70}] run function ttt:act1/carpet_game/sniper_track
execute if entity @s[scores={am_maintimer=-1}] run function ttt:act1/carpet_game/sniper_beam

execute if entity @s[scores={am_maintimer=-99,fnf_carpetshots=2..}] run title @a actionbar [{"text":"Sniper Focus: ||||||","color":"#FFCCCC"}]

execute if entity @s[scores={am_maintimer=-90,am_gametimer=1}] at @e[type=armor_stand,tag=sniper,limit=1] run playsound custom.act1.sniper.first_shot_miss master @a ~ ~ ~ 1000
execute if entity @s[scores={am_maintimer=-90,am_gametimer=1}] run tellraw @a [{"text":"<","color":"white"},{"text":"Sniper","color":"red"},{"text":"> "},{"text":"*chuckle*","color":"red"}]
execute if entity @s[scores={am_maintimer=-80,am_gametimer=2..}] at @e[type=armor_stand,tag=sniper,limit=1] run playsound custom.act1.sniper.shot_miss master @a ~ ~ ~ 1000