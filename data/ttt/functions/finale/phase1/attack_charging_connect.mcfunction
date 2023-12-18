# Run as server, at trollge
effect give 00000001-0000-0000-0000-000000000000 resistance 1 255 true
summon creeper ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"enemy",Health:100f,Fuse:0,Tags:["forkill"],Attributes:[{Name:generic.max_health,Base:100}]}
execute if predicate ttt:50ch run scoreboard players add @s f3_attackcombo 1
execute if score @s f3_attackcombo matches 2.. run function ttt:finale/phase1/attack_convert