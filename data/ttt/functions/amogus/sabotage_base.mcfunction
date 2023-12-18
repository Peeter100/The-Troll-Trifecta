# Values of am_sabid
# 1 - reactor
# 2 - o2
# 3 - lights
# 4 - doors

# To specify what doors are closed,
# use the marker entities with Sabotage_ID 4 or above
# Assume am_sabid will have ID of 4 when any doors
# are closed to prevent other sabotages.

# IDs of specific doors:
# 4 - cafeteria
# 5 - storage
# 6 - electrical
# 7 - medbay
# 8 - upper engine
# 9 - lower engine
# 10 - security


execute if entity @a[tag=amplayer,scores={Sabotage_ID=1..3}] if entity @s[scores={am_sabcool=1..}] run function ttt:amogus/display_sabotage_cooldown
execute if entity @a[tag=amplayer,scores={Sabotage_ID=1..3}] if entity @s[scores={am_sabid=1..,am_sabcool=0}] run tellraw @a {"text":"Only one type of sabotage can be active at a time!","color":"red"}
execute if entity @a[tag=amplayer,scores={Sabotage_ID=1}] if entity @s[scores={am_sabid=0,am_sabcool=0}] run function ttt:amogus/sabotage_reactor_activate
execute if entity @a[tag=amplayer,scores={Sabotage_ID=2}] if entity @s[scores={am_sabid=0,am_sabcool=0}] run function ttt:amogus/sabotage_o2_activate
execute if entity @a[tag=amplayer,scores={Sabotage_ID=3}] if entity @s[scores={am_sabid=0,am_sabcool=0}] run function ttt:amogus/sabotage_lights_activate

execute if entity @a[tag=amplayer,scores={Sabotage_ID=4..14}] if entity @s[scores={am_sabid=1..3}] run tellraw @a {"text":"Only one type of sabotage can be active at a time!","color":"red"}
execute if entity @a[tag=amplayer,scores={Sabotage_ID=4..14}] unless entity @s[scores={am_sabid=1..3}] run function ttt:amogus/sabotage_door

execute if entity @a[tag=amplayer,scores={Sabotage_ID=15}] run function ttt:amogus/sabotage_slot_reactor
execute if entity @a[tag=amplayer,scores={Sabotage_ID=16}] run function ttt:amogus/sabotage_slot_o2

scoreboard players reset @a Sabotage_ID
scoreboard players enable @a[tag=amplayer] Sabotage_ID