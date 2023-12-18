stopsound @a master custom.t2s.tails.act3_congrats
stopsound @a master custom.t2s.tails.act3_button
stopsound @a master custom.t2s.tails.act3_shadow_part1
stopsound @a master custom.t2s.tails.act3_shadow_part2
scoreboard players reset @a Game_Choice

data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[15f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:63}}]}
data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:82}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:87}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:81}}]}
data merge entity @e[type=armor_stand,tag=tailstails,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:84}},{}],ArmorItems:[{},{},{},{}]}

effect give @a[team=p] levitation 100 255 true
tp @e[type=armor_stand,tag=tails] -3 32 ~ 0 0
tp @a[team=p] -3 31.25 ~ 0 0

execute if score @s dialogueseq matches 1 run playsound custom.act3.sonic.jump master @a ~ ~ ~ 0.5
execute if score @s dialogueseq matches 1 run schedule function ttt:act3/aftermogus/tails_fly_loop 6t replace

playsound custom.t2s.tails.fly_dontfall master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Don't fall now!","color":"gold"}]
tag @e[type=armor_stand,tag=tailshead,limit=1] remove dontlook

scoreboard players set @s dialogueseq 4
scoreboard players set @s dialoguetime 5000