scoreboard players add @s am_level 1

#scoreboard players set @s am_lvl_uniquereq 0
#execute if score @s am_level matches 3..4 run scoreboard players set @s am_lvl_uniquereq 1
#execute if score @s am_level matches 5 run scoreboard players set @s am_lvl_uniquereq 2
#execute if score @s am_level matches 6..7 run scoreboard players set @s am_lvl_uniquereq 3
#execute if score @s am_level matches 8 run scoreboard players set @s am_lvl_uniquereq 4
#execute if score @s am_level matches 9 run scoreboard players set @s am_lvl_uniquereq 5
#execute if score @s am_level matches 10.. run scoreboard players set @s am_lvl_uniquereq 6

scoreboard players set @s am_lvl_uniquereq -2
scoreboard players operation @s am_lvl_uniquereq += @s am_level

execute if score @s am_lvl_unique < @s am_lvl_uniquereq run scoreboard players remove @s am_level 1
execute if score @s am_lvl_unique >= @s am_lvl_uniquereq if score @s am_lvl_xp < @s am_lvl_xpreq run scoreboard players remove @s am_level 1
execute if score @s am_lvl_unique >= @s am_lvl_uniquereq if score @s am_lvl_xp >= @s am_lvl_xpreq run function ttt:amogus/levelling/levelup