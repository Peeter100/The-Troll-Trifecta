scoreboard players set @e[type=marker,tag=sv,limit=1] dialogueseq 3
data merge entity @s {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:85}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:86}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:81}}]}
data merge entity @e[type=armor_stand,tag=tailstails,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:84}},{}],ArmorItems:[{},{},{},{}]}

execute store result score @s npcbodytp run data get entity @s Pos[1] 10
#execute if score @s npcbodytp matches 300..310 as @e[type=armor_stand,tag=tails] at @s run tp @s ~ 31.5 ~
execute if score @s npcbodytp matches 300..310 as @e[type=armor_stand,tag=tailsbody,limit=1] at @s run function ttt:act3/aftermogus/tails_update_flypos

playsound custom.act3.sonic.jump master @a ~ ~ ~ 0.5
schedule function ttt:act3/aftermogus/tails_fly_loop 6t replace