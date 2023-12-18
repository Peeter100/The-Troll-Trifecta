effect clear @a[tag=amplayer] jump_boost
execute as @r[tag=amplayer] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["forkill","amogtask","jumprope"],Pose:{LeftArm:[0f,0f,0f],RightArm:[180f,0f,0f]},HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:28}},{}]}
scoreboard players set @s am_gametimer 417