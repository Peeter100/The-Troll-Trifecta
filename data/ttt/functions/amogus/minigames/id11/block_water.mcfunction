execute if block ~1 21 ~ yellow_concrete run function ttt:amogus/minigames/id11/block_water_electrocute
execute if block ~-1 21 ~ yellow_concrete run function ttt:amogus/minigames/id11/block_water_electrocute
execute if block ~ 21 ~1 yellow_concrete run function ttt:amogus/minigames/id11/block_water_electrocute
execute if block ~ 21 ~-1 yellow_concrete run function ttt:amogus/minigames/id11/block_water_electrocute

execute unless entity @s[tag=electricbogaloo] if score @e[type=marker,tag=sv,limit=1] am_gamescore1 matches 2 run function ttt:amogus/minigames/id11/block_water_piranhas

tag @s remove electricbogaloo