scoreboard players operation @s am_level = @s am_levelb
scoreboard players set @s am_levelb -1

execute if score @s am_level matches ..1 run scoreboard players set @s am_lvl_crewmates 9
execute if score @s am_level matches 2..3 run scoreboard players set @s am_lvl_crewmates 8
execute if score @s am_level matches 4..6 run scoreboard players set @s am_lvl_crewmates 7
execute if score @s am_level matches 7..9 run scoreboard players set @s am_lvl_crewmates 6
execute if score @s am_level matches 10.. run scoreboard players set @s am_lvl_crewmates 5

execute if score @s am_level matches ..2 run scoreboard players set @s am_lvl_killcool 600
execute if score @s am_level matches 3..5 run scoreboard players set @s am_lvl_killcool 500
execute if score @s am_level matches 6..7 run scoreboard players set @s am_lvl_killcool 400
execute if score @s am_level matches 8.. run scoreboard players set @s am_lvl_killcool 300

execute if score @s am_level matches ..2 run scoreboard players set @s am_lvl_sabcool 600
execute if score @s am_level matches 3..4 run scoreboard players set @s am_lvl_sabcool 500
execute if score @s am_level matches 5..7 run scoreboard players set @s am_lvl_sabcool 400
execute if score @s am_level matches 8 run scoreboard players set @s am_lvl_sabcool 300
execute if score @s am_level matches 9.. run scoreboard players set @s am_lvl_sabcool 200