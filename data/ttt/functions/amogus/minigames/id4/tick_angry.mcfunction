scoreboard players add @s am_gamescore7 1

execute if entity @s[scores={am_gamescore7=5..}] run scoreboard players set @s am_gamescore7 1

execute if entity @s[scores={am_gamescore7=1}] run data merge entity @e[tag=baldi,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:23}},{}]}
execute if entity @s[scores={am_gamescore7=2}] run data merge entity @e[tag=baldi,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:24}},{}]}
execute if entity @s[scores={am_gamescore7=3}] run data merge entity @e[tag=baldi,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:25}},{}]}
execute if entity @s[scores={am_gamescore7=3}] run execute as @e[tag=baldi] at @s run playsound custom.act3.bald.ruler_slap master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gamescore7=3}] run execute as @e[tag=baldi] at @s unless entity @a[tag=amplayer,distance=0..1] run tp @s ^ ^ ^1.25 facing entity @p[tag=amplayer]
execute if entity @s[scores={am_gamescore7=4}] run data merge entity @e[tag=baldi,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:24}},{}]}

###execute unless entity @s[scores={am_gamescore7=3..4}] run execute as @e[tag=baldi] at @s run tp @s ~ ~ ~ facing entity @p[tag=amplayer]

execute as @a[tag=amplayer] at @s if entity @e[tag=baldi,distance=0..1.5] run function ttt:amogus/minigames/id4/baldi_kill