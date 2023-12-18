# 3020..3029
scoreboard players set @s[scores={acttimer=3029}] acttimer 3020
effect give @a[scores={food=..1}] saturation 1 0 true
execute as @a[tag=amplayer] at @s unless entity @s[nbt={Inventory:[{Slot:0b,tag:{mapicon:1b}},{Slot:1b,tag:{reporticon:1b}},{Slot:2b,tag:{venticon:1b}},{Slot:3b,tag:{killicon:1b}},{Slot:5b,tag:{lightsicon:1b}},{Slot:6b,tag:{doorsicon:1b}},{Slot:7b,tag:{criticon:1b}},{Slot:8b,tag:{sabotageicon:1b}},{Slot:-106b,tag:{impostorsuit:1b}}]}] run function ttt:amogus/reportmeeting/base_items
execute as @e[tag=amogai,nbt=!{Health:100.0f}] at @s run data merge entity @s {Health:100.0f}
execute as @a[tag=!amplayer,team=p] at @s run spectate @p[tag=amplayer]

scoreboard players add @s dialoguetime 1

execute if score @s dialoguetime matches 40 run function ttt:amogus/reportmeeting/take_your_seats
execute if score @s dialoguetime matches 60 run function ttt:amogus/reportmeeting/argument_form

execute if score @s dialoguetime matches 108 run tellraw @a {"text":"*crewmates are discussing*","color":"white"}
execute if score @s dialoguetime matches 108 run function ttt:amogus/reportmeeting/discussion_noises

execute if score @s dialoguetime matches 200 run stopsound @a master custom.amogus.discussion
execute if score @s dialoguetime matches 200 run tellraw @a {"text":"Accusations made against you:","color":"green"}
execute if score @s dialoguetime matches 220 run function ttt:amogus/reportmeeting/process_accusations
execute if score @s dialoguetime matches 260 run function ttt:amogus/reportmeeting/decide_fate

execute if score @s dialoguetime matches 300 run function ttt:amogus/reportmeeting/process_info
execute if score @s dialoguetime matches 360 unless entity @a[tag=amplayer,tag=reportee] as @e[type=villager,tag=reportee,limit=1,sort=random] run function ttt:amogus/reportmeeting/blackout_info2
execute if score @s dialoguetime matches 360 if entity @a[tag=amplayer,tag=reportee] as @e[type=armor_stand,tag=amogalive,limit=1,sort=random] run function ttt:amogus/reportmeeting/blackout_info2

execute if score @s dialoguetime matches 400 run function ttt:amogus/reportmeeting/ejection_safe
execute if score @s dialoguetime matches 445 run function ttt:amogus/prepare_zombai
execute if score @s dialoguetime matches 460 run function ttt:amogus/game_resume