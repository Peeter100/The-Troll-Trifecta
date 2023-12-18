summon husk -58 13 150 {ActiveEffects:[{Id:14,Amplifier:0b,Duration:3,ShowParticles:0b}],CustomNameVisible:0b,Team:"enemy",PersistenceRequired:1b,CanPickUpLoot:0b,Health:30f,Tags:["forkill","clashmob","barbarianmob"],CustomName:'{"text":"Barbarian","color":"yellow","italic":false}',Attributes:[{Name:generic.max_health,Base:30},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:0},{Name:zombie.spawn_reinforcements,Base:0}],HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{CustomModelData:1,Unbreakable:1b}},{}]}
execute as @e[tag=clashmob,tag=!clashready] at @s run spreadplayers -58 150 3 10 under 18 false @s
execute as @e[tag=clashmob,tag=!clashready] at @s run tp @s ~ 16 ~ facing entity @p[team=p]
execute as @e[tag=clashmob,tag=!clashready] at @s run particle cloud ~ ~1 ~ .2 .5 .2 0 40 normal @a
tag @e[tag=clashmob,tag=!clashready] add clashready
scoreboard players add @s cr_barspawned 1