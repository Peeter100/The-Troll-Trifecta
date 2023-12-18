execute unless entity @e[type=marker,tag=doormarker,scores={npcbodytp=401..}] run scoreboard players set @e[type=marker,tag=sv] am_sabid 0
execute unless entity @e[type=marker,tag=doormarker,scores={npcbodytp=401..}] as @e[type=marker,tag=sv] at @e[type=armor_stand,tag=playerloc,limit=1] run function ttt:amogus/minigames/spread_ais
execute if entity @s[tag=x] run fill ~-1 ~ ~ ~1 ~2 ~ air
execute if entity @s[tag=z] run fill ~ ~ ~-1 ~ ~2 ~1 air