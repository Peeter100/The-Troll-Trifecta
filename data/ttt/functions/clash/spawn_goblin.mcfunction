summon zombie -58 13 150 {ActiveEffects:[{Id:14,Amplifier:0b,Duration:3,ShowParticles:0b}],CustomNameVisible:0b,Team:"enemy",PersistenceRequired:1b,CanPickUpLoot:0b,Health:10f,Tags:["forkill","clashmob","goblinmob"],CustomName:'{"text":"Goblin","color":"green","italic":false}',Attributes:[{Name:generic.max_health,Base:10},{Name:generic.movement_speed,Base:0.35},{Name:generic.attack_damage,Base:0},{Name:zombie.spawn_reinforcements,Base:0}],HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b}},{}]}
execute as @e[tag=clashmob,tag=!clashready] at @s run spreadplayers -58 150 3 10 under 18 false @s
execute as @e[tag=clashmob,tag=!clashready] at @s run tp @s ~ 16 ~ facing entity @p[team=p]
execute as @e[tag=clashmob,tag=!clashready] at @s run particle cloud ~ ~1 ~ .2 .5 .2 0 40 normal @a
tag @e[tag=clashmob,tag=!clashready] add clashready
scoreboard players add @s cr_gobspawned 1