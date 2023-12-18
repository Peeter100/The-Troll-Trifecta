scoreboard players set @e[type=marker,tag=sv,limit=1] dialogueseq 1
data merge entity @s {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:52}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:97}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:51}}]}
data merge entity @e[type=armor_stand,tag=tailstails,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:54}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:55}}],ArmorItems:[{},{},{},{}]}

execute store result score @s npcbodytp run data get entity @s Pos[1] 10
#execute if score @s npcbodytp matches 315 as @e[type=armor_stand,tag=tails] at @s run tp @s ~ 30 ~
execute if score @s npcbodytp matches 315 run schedule function ttt:act3/aftermogus/tails_walkcycle1 2t replace
execute if score @s npcbodytp matches 315 as @e[type=armor_stand,tag=tailsbody,limit=1] at @s run function ttt:act3/aftermogus/tails_update_pos

stopsound @a master custom.act1.tails_fly_loop
schedule clear ttt:act3/aftermogus/tails_fly_loop