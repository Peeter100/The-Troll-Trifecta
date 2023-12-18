execute at @a[tag=bossplayer,limit=1,sort=furthest] run summon marker ~ ~ ~ {Tags:["forkill","trollgeleaptrgt"],PersistenceRequired:1b,NoGravity:1b,Invulnerable:1b,Silent:1b}
scoreboard players set @s am_gamescore3 3
execute if entity @e[type=marker,tag=trollgeleaptrgt,distance=..30] run scoreboard players set @s am_gamescore3 2
execute if entity @e[type=marker,tag=trollgeleaptrgt,distance=..22] run scoreboard players set @s am_gamescore3 1
execute if entity @e[type=marker,tag=trollgeleaptrgt,distance=..15] run scoreboard players set @s am_gamescore3 0
tp 00000001-0000-0000-0000-000000000000 ~ ~ ~ facing entity @e[type=marker,tag=trollgeleaptrgt,limit=1]