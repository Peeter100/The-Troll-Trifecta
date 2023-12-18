# Run as server, at trollge
data merge entity 00000002-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:31}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:32}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:33}}]}
data merge entity 00000003-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:34}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:35}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:36}}]}
effect give 00000001-0000-0000-0000-000000000000 resistance 1 255 true
summon creeper ^ ^ ^1.5 {Silent:1b,Invulnerable:1b,Team:"enemy",Health:100f,Fuse:0,Tags:["forkill"],Attributes:[{Name:generic.max_health,Base:100}],powered:1b}
execute if predicate ttt:50ch run scoreboard players add @s f3_attackcombo 1
execute if predicate ttt:15ch run scoreboard players remove @s f3_stunmeter 1
execute if score @s f3_attackcombo matches 3.. run function ttt:finale/phase1/attack_convert