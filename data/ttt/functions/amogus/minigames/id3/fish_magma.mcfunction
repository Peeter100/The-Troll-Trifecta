summon magma_cube 45 21 175 {HasVisualFire:1b,OnGround:0b,PersistenceRequired:1b,Health:5f,Size:0,wasOnGround:1b,Motion:[0.2,0.5,-0.5],Rotation:[-160F,0F],Tags:["forkill","amogtask","magmac"],Attributes:[{Name:generic.max_health,Base:5},{Name:generic.attack_damage,Base:100}]}
summon magma_cube 44 21 176 {HasVisualFire:1b,OnGround:0b,PersistenceRequired:1b,Health:5f,Size:0,wasOnGround:1b,Motion:[0.0,0.5,-0.45],Rotation:[-180F,0F],Tags:["forkill","amogtask","magmac"],Attributes:[{Name:generic.max_health,Base:5},{Name:generic.attack_damage,Base:100}]}
summon magma_cube 47 22 177 {HasVisualFire:1b,OnGround:0b,PersistenceRequired:1b,Health:5f,Size:0,wasOnGround:1b,Motion:[0.1,0.5,-0.45],Rotation:[-170F,0F],Tags:["forkill","amogtask","magmac"],Attributes:[{Name:generic.max_health,Base:5},{Name:generic.attack_damage,Base:100}]}
particle flame 45 20.5 176 3 1 1 0 100 normal @a
particle lava 45 20.5 176 3 1 1 0 100 normal @a
particle block lava 45 20.5 176 3 1 1 0 100 normal @a
playsound block.lava.extinguish master @a 45 20.5 176 1000
playsound block.lava.extinguish master @a 45 20.5 176 1000
playsound block.lava.pop master @a 45 20.5 176 1000
scoreboard players set @s am_gamescore4 1

scoreboard players set @s am_gametimer 1692
stopsound @a master custom.t2s.tails.emerald_tip1
stopsound @a master custom.t2s.tails.emerald_tip2

execute as @e[tag=tailshead] at @s run playsound custom.t2s.tails.emerald_magma_spawn master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Watch out!","color":"gold"}]
data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:63}}],Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:52}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:53}}]}
tag @e[type=armor_stand,tag=tailshead] remove dontlook
scoreboard players set @e[type=armor_stand,tag=tailsbody] npcbodytp 9