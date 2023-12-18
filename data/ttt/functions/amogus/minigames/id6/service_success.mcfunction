scoreboard players set @s am_gamescore2 1000
scoreboard players set @s am_gametimer 285
kill @e[type=item]
title @a reset
stopsound @a master
execute as @r[tag=amplayer] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gamescore1=1}] run execute as @e[tag=toad,limit=1] at @s run particle happy_villager ~ ~1 ~ 1 1 1 0 50 normal @a
execute if entity @s[scores={am_gamescore1=1}] run kill @e[tag=toad]

execute if entity @s[scores={am_gamescore1=2}] run execute as @e[tag=shadow,limit=1] at @s run particle happy_villager ~ ~1 ~ 1 1 1 0 50 normal @a
execute if entity @s[scores={am_gamescore1=2}] run kill @e[tag=shadow]

execute if entity @s[scores={am_gamescore1=3}] run execute as @e[tag=smoke,limit=1] at @s run particle happy_villager ~ ~1 ~ 1 1 1 0 50 normal @a
execute if entity @s[scores={am_gamescore1=3}] run kill @e[tag=smoke]