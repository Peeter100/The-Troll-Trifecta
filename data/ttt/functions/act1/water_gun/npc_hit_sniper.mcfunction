scoreboard players add @s fnf_bulliedsniper 1
advancement grant @a only ttt:carpet

stopsound @a master custom.act1.sniper.first_shot_miss
stopsound @a master custom.act1.sniper.first_shot_warning
stopsound @a master custom.act1.sniper.second_shot_warning

item replace entity @e[type=armor_stand,tag=sniper] weapon.offhand with chain{CustomModelData:70}
execute at @e[type=armor_stand,tag=sniper] run playsound entity.player.hurt_on_fire master @a ~ ~ ~ 1000
tellraw @a {"text":"You've stunned the Sniper for 10s!","color":"green"}

execute if score @s am_maintimer matches 6.. if score @s fnf_carpetshots matches 1.. run title @a actionbar [{"text":"Sniper Focus: ","color":"#FFCCCC"},{"text":"||||||","color":"#550000"}]
scoreboard players add @s fnf_carpetshots 1
scoreboard players set @s am_maintimer -1200

execute if score @s fnf_bulliedsniper matches 1 run playsound custom.act1.sniper.wgun master @a ~ ~ ~ 1000
execute if score @s fnf_bulliedsniper matches 1 run tellraw @a [{"text":"<","color":"white"},{"text":"Sniper","color":"red"},{"text":"> "},{"text":"This is so annoying...","color":"red"}]
execute if score @s fnf_bulliedsniper matches 1 run schedule function ttt:act1/water_gun/npc_hit_sniper_moremsg 32t replace

execute if score @s fnf_bulliedsniper matches 2 run stopsound @a master custom.act1.sniper.wgun
execute if score @s fnf_bulliedsniper matches 2 run schedule clear ttt:act1/water_gun/npc_hit_sniper_moremsg
execute if score @s fnf_bulliedsniper matches 2.. run playsound custom.act1.sniper.shot_miss master @a ~ ~ ~ 1000