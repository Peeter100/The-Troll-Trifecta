execute if predicate ttt:50ch run scoreboard players add @s f3_attackcombo 1
execute if score @s f3_bosstakenhp matches 45.. run scoreboard players set @s f3_attackcombo 10

scoreboard players set @s am_gamescore1 10
execute unless score @s f3_attackcombo matches 3.. if predicate ttt:50ch run scoreboard players set @s am_gamescore1 8

scoreboard players remove @s f3_bosshp 2
scoreboard players add @s f3_bosstakenhp 2

execute if score @s f3_attackcombo matches 3.. run function ttt:finale/phase2/attack_flybash_connect_last

summon creeper ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"enemy",Health:100f,Fuse:0,Tags:["forkill"],Attributes:[{Name:generic.max_health,Base:100}],powered:1b}

execute if predicate ttt:50ch as 00000001-0000-0000-0000-000000000000 at @s run tp @s ~ ~ ~ ~15 ~
execute if predicate ttt:50ch as 00000001-0000-0000-0000-000000000000 at @s run tp @s ~ ~ ~ ~-15 ~
execute if predicate ttt:50ch as 00000001-0000-0000-0000-000000000000 at @s run tp @s ~ ~ ~ ~40 ~
execute if predicate ttt:50ch as 00000001-0000-0000-0000-000000000000 at @s run tp @s ~ ~ ~ ~-40 ~

execute if predicate ttt:50ch as 00000004-0000-0000-0000-000000000000 at @s run tp @s ~ ~ ~ ~15 ~
execute if predicate ttt:50ch as 00000004-0000-0000-0000-000000000000 at @s run tp @s ~ ~ ~ ~-15 ~
execute if predicate ttt:50ch as 00000004-0000-0000-0000-000000000000 at @s run tp @s ~ ~ ~ ~40 ~
execute if predicate ttt:50ch as 00000004-0000-0000-0000-000000000000 at @s run tp @s ~ ~ ~ ~-40 ~

data merge entity 00000002-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:231}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:232}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:233}}]}
data merge entity 00000003-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:234}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:235}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:236}}]}
data merge entity 00000004-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:108}},{}],ArmorItems:[{},{},{},{}]}