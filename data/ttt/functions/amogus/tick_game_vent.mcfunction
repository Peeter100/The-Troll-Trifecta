execute as @a[tag=amplayer] at @s unless entity @s[nbt={Inventory:[{Slot:0b,tag:{mapicon:1b}},{Slot:1b,tag:{ventlefticon:1b}},{Slot:2b,tag:{unventicon:1b}},{Slot:3b,tag:{ventrighticon:1b}},{Slot:-106b,tag:{impostorsuit:1b}}]}] run function ttt:amogus/update_items_vent
execute if entity @a[tag=amplayer,scores={Sabotage_ID=1..14}] run function ttt:amogus/sabotage_base_fail
execute if entity @a[tag=amplayer,scores={Sabotage_ID=15..}] run function ttt:amogus/sabotage_base

title @a actionbar {"text":"You are in a vent! Use the hotbar to move.","color":"red"}

# Make crewmates "forget" about you faster if you chill in vents for too long
scoreboard players remove @e[type=villager,tag=amogai,scores={am_ai_noticedtime=-1697..-1}] am_ai_noticedtime 2