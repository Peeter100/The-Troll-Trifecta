scoreboard players add @s dialoguetime 1
execute if score @s acttimer matches 3006..3009 run scoreboard players set @s acttimer 3005
execute if score @s dialoguetime matches 17.. run scoreboard players set @s dialoguetime 1

execute as @a[tag=!amplayer,team=p] at @s run spectate @p[tag=amplayer]

effect clear @a[scores={food=..1}] hunger
effect give @a[scores={food=..1}] saturation 1 0 true

execute as @e[tag=gameai,nbt=!{Health:100.0f}] at @s run data merge entity @s {Health:100.0f}
execute if score @s am_ventid matches 0 as @a[tag=amplayer] at @s unless entity @s[nbt={Inventory:[{Slot:0b,tag:{mapicon:1b}},{Slot:1b,tag:{reporticon:1b}},{Slot:2b,tag:{venticon:1b}},{Slot:3b,tag:{killicon:1b}},{Slot:5b,tag:{lightsicon:1b}},{Slot:6b,tag:{doorsicon:1b}},{Slot:7b,tag:{criticon:1b}},{Slot:8b,tag:{sabotageicon:1b}},{Slot:-106b,tag:{impostorsuit:1b}}]}] run function ttt:amogus/update_items

execute as @e[type=armor_stand,tag=orange,tag=amogalive,limit=1] at @s run tp @s @e[type=villager,tag=amogai,tag=orange,limit=1]
execute as @e[type=armor_stand,tag=yellow,tag=amogalive,limit=1] at @s run tp @s @e[type=villager,tag=amogai,tag=yellow,limit=1]
execute as @e[type=armor_stand,tag=lime,tag=amogalive,limit=1] at @s run tp @s @e[type=villager,tag=amogai,tag=lime,limit=1]
execute as @e[type=armor_stand,tag=green,tag=amogalive,limit=1] at @s run tp @s @e[type=villager,tag=amogai,tag=green,limit=1]
execute as @e[type=armor_stand,tag=cyan,tag=amogalive,limit=1] at @s run tp @s @e[type=villager,tag=amogai,tag=cyan,limit=1]
execute as @e[type=armor_stand,tag=pink,tag=amogalive,limit=1] at @s run tp @s @e[type=villager,tag=amogai,tag=pink,limit=1]
execute as @e[type=armor_stand,tag=purple,tag=amogalive,limit=1] at @s run tp @s @e[type=villager,tag=amogai,tag=purple,limit=1]
execute as @e[type=armor_stand,tag=white,tag=amogalive,limit=1] at @s run tp @s @e[type=villager,tag=amogai,tag=white,limit=1]
execute as @e[type=armor_stand,tag=black,tag=amogalive,limit=1] at @s run tp @s @e[type=villager,tag=amogai,tag=black,limit=1]

execute as @e[type=zombie_villager,tag=orange,tag=amogzombai,limit=1] at @s unless entity @e[type=villager,tag=orange,tag=amogai,distance=0..5] run tp @s @e[tag=orange,tag=amogai,limit=1]
execute as @e[type=zombie_villager,tag=yellow,tag=amogzombai,limit=1] at @s unless entity @e[type=villager,tag=yellow,tag=amogai,distance=0..5] run tp @s @e[tag=yellow,tag=amogai,limit=1]
execute as @e[type=zombie_villager,tag=lime,tag=amogzombai,limit=1] at @s unless entity @e[type=villager,tag=lime,tag=amogai,distance=0..5] run tp @s @e[tag=lime,tag=amogai,limit=1]
execute as @e[type=zombie_villager,tag=green,tag=amogzombai,limit=1] at @s unless entity @e[type=villager,tag=green,tag=amogai,distance=0..5] run tp @s @e[tag=green,tag=amogai,limit=1]
execute as @e[type=zombie_villager,tag=cyan,tag=amogzombai,limit=1] at @s unless entity @e[type=villager,tag=cyan,tag=amogai,distance=0..5] run tp @s @e[tag=cyan,tag=amogai,limit=1]
execute as @e[type=zombie_villager,tag=pink,tag=amogzombai,limit=1] at @s unless entity @e[type=villager,tag=pink,tag=amogai,distance=0..5] run tp @s @e[tag=pink,tag=amogai,limit=1]
execute as @e[type=zombie_villager,tag=purple,tag=amogzombai,limit=1] at @s unless entity @e[type=villager,tag=purple,tag=amogai,distance=0..5] run tp @s @e[tag=purple,tag=amogai,limit=1]
execute as @e[type=zombie_villager,tag=white,tag=amogzombai,limit=1] at @s unless entity @e[type=villager,tag=white,tag=amogai,distance=0..5] run tp @s @e[tag=white,tag=amogai,limit=1]
execute as @e[type=zombie_villager,tag=black,tag=amogzombai,limit=1] at @s unless entity @e[type=villager,tag=black,tag=amogai,distance=0..5] run tp @s @e[tag=black,tag=amogai,limit=1]

execute if score @s dialoguetime matches 1 run function ttt:amogus/crewmate_display_update_0
execute if score @s dialoguetime matches 3 run function ttt:amogus/crewmate_display_update_3
execute if score @s dialoguetime matches 5 run function ttt:amogus/crewmate_display_update_4
execute if score @s dialoguetime matches 7 run function ttt:amogus/crewmate_display_update_3
execute if score @s dialoguetime matches 9 run function ttt:amogus/crewmate_display_update_0
execute if score @s dialoguetime matches 11 run function ttt:amogus/crewmate_display_update_1
execute if score @s dialoguetime matches 13 run function ttt:amogus/crewmate_display_update_2
execute if score @s dialoguetime matches 15 run function ttt:amogus/crewmate_display_update_1

execute as @a[tag=amplayer,tag=am_cankill] at @s unless entity @e[type=armor_stand,tag=amogalive,distance=0..4] if entity @e[type=marker,tag=sv,scores={am_ventid=0}] run function ttt:amogus/slot_disable_kill
execute as @a[tag=amplayer,tag=am_canvent] at @s unless block ~ 0 ~ raw_iron_block if entity @e[type=marker,tag=sv,scores={am_ventid=0}] run function ttt:amogus/slot_disable_vent
execute as @a[tag=amplayer,tag=am_canreport] at @s unless entity @e[type=armor_stand,tag=amogdead,distance=0..6] if entity @e[type=marker,tag=sv,scores={am_ventid=0}] run function ttt:amogus/slot_disable_report
execute as @a[tag=amplayer,tag=am_cantask] at @s unless entity @e[type=marker,tag=taskmarker,distance=0..1.5] run function ttt:amogus/slot_disable_use

execute as @a[tag=amplayer,tag=!am_cankill] at @s if entity @e[type=armor_stand,tag=amogalive,distance=0..4] if entity @e[type=marker,tag=sv,scores={am_killcool=0,am_ventid=0}] run function ttt:amogus/slot_enable_kill
execute as @a[tag=amplayer,tag=!am_canvent] at @s if block ~ 0 ~ raw_iron_block if entity @e[type=marker,tag=sv,scores={am_ventid=0}] run function ttt:amogus/slot_enable_vent
execute as @a[tag=amplayer,tag=!am_canreport] at @s if entity @e[type=armor_stand,tag=amogdead,distance=0..6] if entity @e[type=marker,tag=sv,scores={am_ventid=0}] run function ttt:amogus/slot_enable_report
execute as @a[tag=amplayer,tag=!am_cantask] at @s if entity @e[type=marker,tag=taskmarker,distance=0..1.5] if entity @e[type=marker,tag=sv,scores={am_ventid=0}] run function ttt:amogus/slot_enable_use

execute as @a[tag=amplayer,tag=am_cantask] at @s unless entity @s[nbt={Inventory:[{Slot:4b,tag:{useicon:1b}}]}] run function ttt:amogus/update_items_use
execute if score @s am_ventid matches 1.. run function ttt:amogus/tick_game_vent

scoreboard players add @e[type=armor_stand,tag=amogdead] npcbodytp 1
execute as @e[type=armor_stand,tag=amogdead,scores={npcbodytp=20}] at @s run function ttt:amogus/crewmate_collapse

# execute if score @s am_sabcool matches 1.. run function ttt:amogus/decrement_sabcool
execute if score @s am_killcool matches 1.. run function ttt:amogus/decrement_killcool

execute as @a[tag=amplayer] at @s if block ~ 0 ~ #ttt:among_update run function ttt:amogus/update_location

scoreboard players remove @e[type=marker,tag=doormarker,scores={npcbodytp=1..}] npcbodytp 1
# execute as @e[type=marker,tag=doormarker,scores={npcbodytp=400},limit=1,sort=random] at @s run playsound custom.amogus.door_open master @a ~ ~ ~ 1000
# execute as @e[type=marker,tag=doormarker,scores={npcbodytp=400}] at @s run function ttt:amogus/doormarker_open

execute as @e[type=villager,tag=amogai,tag=canseebody] at @s run function ttt:amogus/ai/dead_bodies/tick_canseebody

execute if score @s am_sabid matches 0 run function ttt:amogus/tick_game_nosabotage
execute if entity @a[tag=amplayer,scores={Sabotage_ID=1..}] if score @s am_ventid matches 0 run function ttt:amogus/sabotage_base
execute if score @s am_sabid matches 1 run function ttt:amogus/sabotage_reactor_tick
execute if score @s am_sabid matches 2 run function ttt:amogus/sabotage_o2_tick
execute if score @s am_sabid matches 3 run function ttt:amogus/sabotage_lights_tick
execute if score @s am_sabid matches 4 run function ttt:amogus/sabotage_door_tick

particle dust 1 1 0.5 1 10.99 2.0 114 .5 .2 .3 0 2 force @a
execute if entity @a[tag=amplayer,scores={x=9..12,y=1,z=113}] run title @a actionbar {"text":"[ADMIN] Showing all crewmate locations","color":"green"}
execute if entity @a[tag=amplayer,scores={x=9..12,y=1,z=113}] run effect give @e[type=armor_stand,tag=amogalive] glowing 1 0 true

#execute store result score @s am_crewmates if entity @e[type=armor_stand,tag=amogalive]

execute as @a[tag=amplayer] at @s unless entity @s[scores={rc=0,villinteract=0}] run function ttt:amogus/item_use_generic

execute as @e[type=villager,tag=amogai] at @s if entity @s[y=-8,dy=7] run spreadplayers ~ ~ 5 15 under 2 false @s
execute as @e[type=marker,tag=taskmarker] at @s run particle happy_villager ~ ~.5 ~ .5 .5 .5 0 1 normal @a

#execute if entity @e[type=marker,tag=amhost,tag=hasvisioncasted] run function ttt:amogus/visible_crew_list
tag @e[type=marker,tag=amhost] remove hasvisioncasted

scoreboard players remove @e[type=villager,tag=amogai,scores={am_ai_noticedtime=-1699..}] am_ai_noticedtime 1
tag @e[type=villager,tag=amogai,scores={am_ai_noticedtime=0}] remove witness_location
scoreboard players remove @e[type=villager,tag=amogai,scores={am_ai_noticeddoor=1..}] am_ai_noticeddoor 1

execute if score @s st_am_reqtask matches 1 run scoreboard players remove @s am_checkuptimer 1
execute store result bossbar amogbar value run scoreboard players get @s am_checkuptimer
execute if score @s am_checkuptimer matches ..0 if score @s acttimer matches ..3009 run function ttt:amogus/game_enter_taskemergency

execute if score @s am_level matches 6.. run effect give @a[tag=amplayer] speed 1 0 true