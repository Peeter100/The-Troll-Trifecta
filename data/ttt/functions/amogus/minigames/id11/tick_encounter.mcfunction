scoreboard players add @s[scores={am_gametimer=..1998}] am_gametimer 1
kill @e[type=arrow,nbt={inGround:1b}]

execute as @a[team=p] at @s if block ~ ~ ~ water run function ttt:act2/water_freeze
execute as @a[team=p] at @s if block ~ ~ ~ pointed_dripstone[waterlogged=true] run function ttt:act2/water_freeze

execute as @e[type=skeleton,tag=gotosleep] at @s if block ~ ~ ~ water run kill @s
execute as @e[type=skeleton,tag=gotosleep] at @s if block ~ ~ ~ pointed_dripstone[waterlogged=true] run kill @s

execute if score @s am_gametimer matches 1106 run tp @a[tag=amplayer] -51 27 108

execute if score @s am_gametimer matches 1115 if score @s am_gamescore4 matches ..0 run summon skeleton -58 16 160 {OnGround:1b,PersistenceRequired:1b,Health:35f,Rotation:[180F,0F],Tags:["forkill","amogtask","gotosleep"],CustomName:'{"text":"Skeletroll","color":"red","italic":false}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:punch",lvl:8s}]}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,Enchantments:[{}]}}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_helmet",Count:1b,tag:{Unbreakable:1b}}],ArmorDropChances:[0.085F,0.085F,0.000F,0.000F],Attributes:[{Name:generic.max_health,Base:35},{Name:generic.attack_damage,Base:0}]}
execute if score @s am_gametimer matches 1115 if score @s am_gamescore4 matches 1.. run summon armor_stand -58 16 160 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","amogtask","fredsleep","backrooment"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:2}},{}]}

execute if score @s am_gametimer matches 1125 run function ttt:amogus/minigames/id11/encounter_start

execute if score @s am_gametimer matches 1126..1129 unless entity @e[type=skeleton,tag=gotosleep] run function ttt:amogus/minigames/id11/encounter_kill
execute if score @s am_gametimer matches 1129 run scoreboard players set @s am_gametimer 1128

execute if score @s am_gametimer matches 1130..1134 as @e[type=armor_stand,tag=fredsleep,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[tag=amplayer]
execute if score @s am_gametimer matches 1130..1134 as @e[type=armor_stand,tag=fredsleep,limit=1] at @s run tp @s ^ ^ ^0.35

execute if score @s am_gametimer matches 1130..1134 as @p[tag=amplayer] at @s if entity @e[type=armor_stand,tag=fredsleep,distance=0..1] run function ttt:act1/jumpscare

execute if score @s am_gametimer matches 1134 at @e[type=armor_stand,tag=fredsleep,limit=1] run playsound custom.act3.backroom.chase.static master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 1134 run scoreboard players set @s am_gametimer 1130

execute if score @s am_gametimer matches 1920 run function ttt:amogus/minigames/id11/encounter_end