scoreboard players set @e[tag=sv] am_gametimer 11
scoreboard players set @e[tag=sv] am_gamescore4 0
execute as @e[tag=trollgeai] at @s run tp @s ~ ~ ~ facing entity @p[tag=amplayer]
tp @e[tag=trollgevis] @e[tag=trollgeai,limit=1]

execute unless entity @e[tag=trollgeai,tag=camping] run data merge entity @e[tag=trollgefeet,limit=1] {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:11}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:12}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:13}}]}
execute unless entity @e[tag=trollgeai,tag=camping] run data merge entity @e[tag=trollgearm,limit=1] {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:14}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:15}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:16}}]}
execute unless entity @e[tag=trollgeai,tag=camping] run execute as @e[tag=trollgeai] at @s run particle large_smoke ~ ~1 ~ .75 .75 .75 0.1 100 force @a
tag @e[tag=trollgeai] remove camping

tag @e[tag=trollgeent] remove textpick
execute if entity @e[tag=sv,scores={am_seentrollge=0}] run tag @e[tag=trollgeai] add textpick
execute if entity @e[tag=sv,scores={am_seentrollge=1..}] run tag @e[tag=trollgeent,limit=1,sort=random] add textpick
scoreboard players add @e[tag=sv] am_seentrollge 1

execute as @r[tag=amplayer] at @s run playsound custom.act3.backroom.jumpscare master @a ~ ~ ~ 1000
execute if entity @e[tag=trollgeai,tag=textpick] run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"FOUND YOU","color":"#942626","font":"trollge"}]
execute if entity @e[tag=trollgeai,tag=textpick] run execute as @r[tag=amplayer] at @s run playsound custom.act3.backroom.found_you master @a ~ ~ ~ 1000
execute if entity @e[tag=trollgefeet,tag=textpick] run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"NO ESCAPE","color":"#942626","font":"trollge"}]
execute if entity @e[tag=trollgefeet,tag=textpick] run execute as @r[tag=amplayer] at @s run playsound custom.act3.backroom.no_escape master @a ~ ~ ~ 1000
execute if entity @e[tag=trollgearm,tag=textpick] run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"YOU'RE DONE","color":"#942626","font":"trollge"}]
execute if entity @e[tag=trollgearm,tag=textpick] run execute as @r[tag=amplayer] at @s run playsound custom.act3.backroom.youre_done master @a ~ ~ ~ 1000

effect give @e[tag=trollgeai] slowness 2 255 true