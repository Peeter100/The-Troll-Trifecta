scoreboard players set @e[type=marker,tag=sv,limit=1] dialogueseq 3
item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:61}
data merge entity @s {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:85}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:86}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:81}}]}
data merge entity @e[type=armor_stand,tag=tailstails,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:84}},{}],ArmorItems:[{},{},{},{}]}

effect clear @a levitation
function ttt:act3/aftermogus/tails_update_flypos