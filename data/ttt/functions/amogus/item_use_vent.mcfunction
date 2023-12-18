effect give @s levitation 99999 255 true
playsound custom.amogus.vent_open master @a ~ ~ ~ 1000

execute unless entity @e[type=marker,tag=amhost,tag=hasvisioncasted] run function ttt:amogus/ai/player/force_check_raycast
execute as @e[type=villager,tag=amogai,tag=cansee] at @s run function ttt:amogus/ai/player/noticed_vent
function ttt:amogus/levelling/force_crime_rate

execute if entity @s[scores={x=42,z=127}] run scoreboard players set @e[tag=sv] am_ventid 1
execute if entity @s[scores={x=26,z=143}] run scoreboard players set @e[tag=sv] am_ventid 2

execute if entity @s[scores={x=16,z=143}] run scoreboard players set @e[tag=sv] am_ventid 11
execute if entity @s[scores={x=-3,z=128}] run scoreboard players set @e[tag=sv] am_ventid 12

execute if entity @s[scores={x=17,z=128}] run scoreboard players set @e[tag=sv] am_ventid 21
execute if entity @s[scores={x=34,z=115}] run scoreboard players set @e[tag=sv] am_ventid 22
execute if entity @s[scores={x=7,z=111}] run scoreboard players set @e[tag=sv] am_ventid 23

execute if entity @s[scores={x=14,z=80}] run scoreboard players set @e[tag=sv] am_ventid 31
execute if entity @s[scores={x=18,z=74}] run scoreboard players set @e[tag=sv] am_ventid 32
execute if entity @s[scores={x=23,z=80}] run scoreboard players set @e[tag=sv] am_ventid 33

execute if entity @s[scores={x=41,z=66}] run scoreboard players set @e[tag=sv] am_ventid 41
execute if entity @s[scores={x=26,z=50}] run scoreboard players set @e[tag=sv] am_ventid 42

execute if entity @s[scores={x=18,z=54}] run scoreboard players set @e[tag=sv] am_ventid 51
execute if entity @s[scores={x=1,z=66}] run scoreboard players set @e[tag=sv] am_ventid 52

execute as @e[tag=sv] at @s run function ttt:amogus/item_use_vent_update_pos