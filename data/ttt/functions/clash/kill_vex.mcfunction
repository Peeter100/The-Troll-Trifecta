scoreboard players set @a[team=p,scores={cr_killvex=1..}] deathreason 27
execute unless entity @a[team=p,scores={deathreason=27}] run scoreboard players set @r[team=p,tag=cannonfire] deathreason 27

execute if entity @s[tag=hasdiamonds,scores={d1=1,d2=1,d3=1,d4=1,d5=1,d6=1,st_twt=0}] run scoreboard players set @a[team=p] deathreason 0

execute unless entity @a[team=p,scores={deathreason=27}] run summon vex -58 21 150 {CustomNameVisible:1b,Team:"enemy",PersistenceRequired:1b,CanPickUpLoot:0b,Health:1f,BoundX:-58,BoundY:16,BoundZ:150,LifeTicks:999999,Tags:["clashvex","forkill"],CustomName:'{"text":"Twitter User","color":"aqua","italic":false}',HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.attack_damage,Base:1},{Name:generic.attack_knockback,Base:1}]}
execute as @r[team=p,scores={deathreason=27}] at @s run function ttt:clash/kill_vex2