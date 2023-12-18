execute if score @s fnf_seentails matches ..4 run playsound custom.t2s.tails.fly_seeyou master @a ~ ~ ~ 1000
execute if score @s fnf_seentails matches ..4 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"See you later!","color":"gold"}]

effect clear @a levitation
effect give @a[team=p] resistance 1 5 true
tp @a[team=p] -3 33 131

data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:85}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:88}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:81}}]}

execute if score @s fnf_seentails matches ..2 run scoreboard players set @s fnf_seentails 3
execute unless entity @e[type=armor_stand,tag=tailshead,tag=hasincreased] run scoreboard players add @s fnf_seentails 1