summon drowned ~ ~ ~ {Rotation:[180F,0F],CustomNameVisible:1b,Team:"enemy",PersistenceRequired:1b,CanPickUpLoot:0b,Health:25f,Tags:["forkill","clashmob","icemob"],CustomName:'{"text":"Ice Gobbler","color":"aqua","italic":false}',Attributes:[{Name:generic.max_health,Base:30},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:6},{Name:zombie.spawn_reinforcements,Base:0}]}
execute as @e[tag=clashmob,tag=!clashready] at @s run particle cloud ~ ~1 ~ .2 .5 .2 0 40 normal @a
tag @e[tag=clashmob,tag=!clashready] add clashready
scoreboard players add @s cr_icespawned 1