scoreboard players add @s am_ventid 1

execute if entity @s[scores={am_ventid=3}] run scoreboard players set @s am_ventid 1
execute if entity @s[scores={am_ventid=13}] run scoreboard players set @s am_ventid 11
execute if entity @s[scores={am_ventid=24}] run scoreboard players set @s am_ventid 21
execute if entity @s[scores={am_ventid=34}] run scoreboard players set @s am_ventid 31
execute if entity @s[scores={am_ventid=43}] run scoreboard players set @s am_ventid 41
execute if entity @s[scores={am_ventid=53}] run scoreboard players set @s am_ventid 51

function ttt:amogus/item_use_vent_update_pos
### execute as @a[tag=amplayer] at @s run function ttt:amogus/update_location