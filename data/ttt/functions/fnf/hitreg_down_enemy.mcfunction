particle block light_blue_wool ~ ~-0.2 ~ .2 .2 .2 0 40 normal @a
kill @e[tag=p100arrow,tag=downarrow,distance=0..1,limit=1,sort=nearest]
item replace entity @e[type=armor_stand,tag=pnotebutton,tag=downbutton,limit=1] weapon.mainhand with redstone{CustomModelData:22}

scoreboard players set @e[type=marker,tag=sv] fnf_ad_p 16
scoreboard players set @e[type=marker,tag=sv] fnf_dir_p 2
schedule function ttt:fnf/buttons_enemy_downrelease 2t replace
data merge entity @e[type=armor_stand,tag=peeter1,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:31}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:32}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:33}}],Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=peeter2,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:34}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:35}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:36}}],Pose:{Head:[0f,0f,0f]}}