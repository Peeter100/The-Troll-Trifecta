data merge entity 00000002-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:31}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:32}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:33}}]}
data merge entity 00000003-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:34}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:35}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:36}}]}
effect give 00000001-0000-0000-0000-000000000000 resistance 1 255 true
execute positioned ^ ^ ^1.5 run summon creeper ~ 15 ~ {Silent:1b,Invulnerable:1b,Team:"enemy",Health:100f,Fuse:0,Tags:["forkill"],Attributes:[{Name:generic.max_health,Base:100}],powered:1b}
tp 00000001-0000-0000-0000-000000000000 ~ 15 ~
kill @e[type=marker,tag=trollgeleaptrgt]