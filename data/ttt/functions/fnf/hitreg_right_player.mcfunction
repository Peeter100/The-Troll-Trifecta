execute unless entity @s[tag=fnflyrics] run title @a title {"text":""}
scoreboard players set @s fnf_ad_bf 16
scoreboard players set @s fnf_dir_bf 4
data merge entity @e[type=armor_stand,tag=bf1,limit=1] {HandItems:[{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:71}},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:72}}],ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:73}}],Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=bf2,limit=1] {HandItems:[{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:74}},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:75}}],ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:76}}],Pose:{Head:[0f,0f,0f]}}

execute if entity @e[type=armor_stand,tag=bfarrow,tag=rightarrow,distance=0..0.4] run function ttt:fnf/note_sick
execute if entity @e[type=armor_stand,tag=bfarrow,tag=rightarrow,distance=0..0.65] unless entity @s[tag=hittick] run function ttt:fnf/note_good
execute unless entity @s[tag=hittick] run function ttt:fnf/note_bad

particle block red_wool ~ ~-0.2 ~ .2 .2 .2 0 40 normal @a
kill @e[tag=bfarrow,tag=rightarrow,distance=0..1,limit=1,sort=nearest]

execute if entity @e[type=armor_stand,tag=bfarrow,tag=rightarrow,tag=jackarrow,distance=0.5..1.25] run scoreboard players set @s fnf_hd_r 1
execute if entity @e[type=armor_stand,tag=bfarrow,tag=rightarrow,tag=jackarrow,distance=0.5..1.25] run tag @s add jackhit
tag @s remove hittick