summon pig -58 13 150 {Invulnerable:1b,CustomNameVisible:0b,Team:"enemy",PersistenceRequired:1b,CustomName:'{"text":"Hog","color":"light_purple","italic":false}',Saddle:0b,Tags:["forkill","clashmob","notickup"],Passengers:[{id:"minecraft:zombie_villager",Team:"enemy",CustomNameVisible:0b,PersistenceRequired:1b,Health:8f,IsBaby:0b,Tags:["forkill","clashmob","clashready","hogridermob"],CustomName:'{"text":"Hog Rider","color":"#873200","italic":false}',HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Unbreakable:1b,CustomModelData:2}},{}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:3,ShowParticles:0b},{Id:18,Amplifier:2b,Duration:99999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:8},{Name:generic.attack_damage,Base:0},{Name:generic.attack_knockback,Base:2}],VillagerData:{profession:"minecraft:none",type:"minecraft:plains"},Offers:{}}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:3,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:0.45}]}
execute as @e[tag=clashmob,tag=!clashready] at @s run spreadplayers -58 150 3 10 under 18 false @s
execute as @e[tag=clashmob,tag=!clashready] at @s run tp @s ~ 16 ~ facing entity @p[team=p]
execute as @e[tag=clashmob,tag=!clashready] at @s run particle cloud ~ ~1 ~ .2 .5 .2 0 40 normal @a
tag @e[tag=clashmob,tag=!clashready] add clashready
scoreboard players add @s cr_hogspawned 1