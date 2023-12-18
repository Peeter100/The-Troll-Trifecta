scoreboard players remove @s am_ventid 1

execute if entity @s[scores={am_ventid=0}] run scoreboard players set @s am_ventid 2
execute if entity @s[scores={am_ventid=10}] run scoreboard players set @s am_ventid 12
execute if entity @s[scores={am_ventid=20}] run scoreboard players set @s am_ventid 23
execute if entity @s[scores={am_ventid=30}] run scoreboard players set @s am_ventid 33
execute if entity @s[scores={am_ventid=40}] run scoreboard players set @s am_ventid 42
execute if entity @s[scores={am_ventid=50}] run scoreboard players set @s am_ventid 52

function ttt:amogus/item_use_vent_update_pos
### execute as @a[tag=amplayer] at @s run function ttt:amogus/update_location