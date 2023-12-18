# 3010..3019
scoreboard players set @s[scores={acttimer=3019}] acttimer 3010
effect give @a[scores={food=..1}] saturation 1 0 true
execute as @a[tag=amplayer] at @s unless entity @s[nbt={Inventory:[{Slot:0b,tag:{mapicon:1b}},{Slot:1b,tag:{reporticon:1b}},{Slot:2b,tag:{venticon:1b}},{Slot:3b,tag:{killicon:1b}},{Slot:5b,tag:{lightsicon:1b}},{Slot:6b,tag:{doorsicon:1b}},{Slot:7b,tag:{criticon:1b}},{Slot:8b,tag:{sabotageicon:1b}},{Slot:-106b,tag:{impostorsuit:1b}}]}] run function ttt:amogus/reportmeeting/base_items
execute as @e[tag=amogai,nbt=!{Health:100.0f}] at @s run data merge entity @s {Health:100.0f}
execute as @a[tag=!amplayer,team=p] at @s run spectate @p[tag=amplayer]

scoreboard players add @s dialoguetime 1

execute as @a[tag=amplayer] at @s if block ~ ~ ~ lava run effect give @s instant_damage 1 0 true

execute if score @s dialoguetime matches 40 run function ttt:amogus/reportmeeting/take_your_seats
execute if score @s dialoguetime matches 40 run function ttt:amogus/emergencymeeting/argument_form

execute if score @s dialoguetime matches 88 run function ttt:amogus/emergencymeeting/fight_or_flight
execute if score @s dialoguetime matches 90 run scoreboard players set @s dialoguetime 89

execute if score @s dialoguetime matches 88..89 unless entity @a[tag=amplayer,scores={Game_Choice=0}] run function ttt:amogus/emergencymeeting/player_answer

execute if score @s dialoguetime matches 130 as @e[type=villager,tag=reportee,limit=1] run function ttt:amogus/emergencymeeting/dialogue_photo
execute if score @s dialoguetime matches 180 as @e[type=villager,tag=reportee,limit=1] run function ttt:amogus/emergencymeeting/dialogue_4k

execute if score @s dialoguetime matches 220 run tellraw @a [{"text":"<","color":"white"},{"text":"Red (You)","color":"red"},{"text":"> ","color":"white"},{"text":"Is that even allowed?","color":"red"}]
execute if score @s dialoguetime matches 220 at @p[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000
execute if score @s dialoguetime matches 220 at @p[tag=amplayer] run schedule function ttt:amogus/stopsound_text 20t replace

execute if score @s dialoguetime matches 270 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> ","color":"white"},{"text":"No.","color":"yellow"}]
execute if score @s dialoguetime matches 270 at @p[tag=amplayer] run playsound custom.act3.king.mad master @a ~ ~ ~ 1000

execute if score @s dialoguetime matches 300 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> ","color":"white"},{"text":"But we can't un-see the photo, can we?","color":"yellow"}]
execute if score @s dialoguetime matches 300 at @p[tag=amplayer] run playsound custom.act3.king.cry master @a ~ ~ ~ 1000

execute if score @s dialoguetime matches 370 run function ttt:amogus/reportmeeting/ejection_death