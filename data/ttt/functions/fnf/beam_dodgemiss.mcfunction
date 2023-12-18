particle explosion 0 30 134 .4 .4 .4 0 40 force @a
particle flame -3 30 134 1.4 .2 .2 0 100 normal @a
execute unless entity @s[tag=hasdiamonds,scores={d1=1,d2=1,d3=1,d4=1,d5=1,d6=1,st_fnf_fire=0}] run scoreboard players add @s fnf_hp 55
scoreboard players set @s fnf_dd 0
scoreboard players set @s fnf_ad_p 10
data merge entity @e[type=armor_stand,tag=peeter1,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:1}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:2}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:3}}],Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=peeter2,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:4}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:10}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:6}}],Pose:{Head:[0f,0f,0f]}}
execute store result bossbar minecraft:fnfhp value run scoreboard players get @s fnf_hp
#execute as @e[tag=bf1] at @s run playsound entity.player.hurt master @a ~ ~ ~ 1000

execute if entity @s[scores={fnf_hp=100..}] run function ttt:fnf/die