execute if entity @e[type=armor_stand,tag=firearrow,distance=0..1] run function ttt:fnf/beam_arrow_hit
execute unless entity @s[tag=foundarrow] run scoreboard players set @e[type=marker,tag=sv] fnf_ad_p 16
execute unless entity @s[tag=foundarrow] run data merge entity @e[type=armor_stand,tag=peeter1,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:71}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:72}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:73}}],Pose:{Head:[0f,0f,0f]}}
execute unless entity @s[tag=foundarrow] run data merge entity @e[type=armor_stand,tag=peeter2,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:74}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:75}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:76}}],Pose:{Head:[0f,0f,0f]}}
execute unless entity @s[tag=foundarrow] run scoreboard players set @e[type=marker,tag=sv] fnf_dir_p 4

particle block red_wool ~ ~-0.2 ~ .2 .2 .2 0 40 normal @a
kill @e[tag=p100arrow,tag=rightarrow,distance=0..1,limit=1,sort=nearest]
item replace entity @e[type=armor_stand,tag=pnotebutton,tag=rightbutton,limit=1] weapon.mainhand with redstone{CustomModelData:24}
schedule function ttt:fnf/buttons_enemy_rightrelease 2t replace
tag @s remove foundarrow