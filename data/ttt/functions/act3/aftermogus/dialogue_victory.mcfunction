scoreboard players add @s dialoguetime 1
execute as @a[tag=!amplayer,team=p] at @s run spectate @p[tag=amplayer]

execute if score @s dialoguetime matches 10 run function ttt:act3/aftermogus/prefix

execute if score @s dialoguetime matches 50 run function ttt:act3/aftermogus/summon_ents

execute if score @s dialoguetime matches 160 run function ttt:act3/aftermogus/start_playing