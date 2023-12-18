particle block lime_wool ~ ~-0.2 ~ .2 .2 .2 0 40 normal @a
kill @e[tag=p100arrow,tag=uparrow,distance=0..1,limit=1,sort=nearest]
item replace entity @e[type=armor_stand,tag=pnotebutton,tag=upbutton,limit=1] weapon.mainhand with redstone{CustomModelData:23}

scoreboard players set @e[type=marker,tag=sv] fnf_ad_p 16
scoreboard players set @e[type=marker,tag=sv] fnf_dir_p 3
schedule function ttt:fnf/buttons_enemy_uprelease 2t replace
data merge entity @e[type=armor_stand,tag=peeter1,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:51}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:52}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:53}}],Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=peeter2,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:54}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:55}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:56}}],Pose:{Head:[0f,0f,0f]}}