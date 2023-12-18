particle block magenta_wool ~ ~-0.2 ~ .2 .2 .2 0 40 normal @a
kill @e[tag=p100arrow,tag=leftarrow,distance=0..1,limit=1,sort=nearest]
item replace entity @e[type=armor_stand,tag=pnotebutton,tag=leftbutton,limit=1] weapon.mainhand with redstone{CustomModelData:21}

scoreboard players set @e[type=marker,tag=sv] fnf_ad_p 16
scoreboard players set @e[type=marker,tag=sv] fnf_dir_p 1
schedule function ttt:fnf/buttons_enemy_leftrelease 2t replace
data merge entity @e[type=armor_stand,tag=peeter1,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:11}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:12}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:13}}],Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=peeter2,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:14}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:15}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:16}}],Pose:{Head:[0f,0f,0f]}}