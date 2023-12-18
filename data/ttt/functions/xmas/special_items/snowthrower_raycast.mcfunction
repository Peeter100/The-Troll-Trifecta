particle dust 1 1 1 2 ~ ~ ~ .3 .3 .3 0 2 force @a

execute as @e[type=#ttt:aggresive,distance=..1.5] at @s run function ttt:xmas/special_items/snowthrower_damage_regular
execute as @e[type=#ttt:aggresive_undead,distance=..1.5] at @s run function ttt:xmas/special_items/snowthrower_damage_undead

scoreboard players add .sthrowercast npcbodytp 1
execute unless score .sthrowercast npcbodytp matches 31.. positioned ^ ^ ^0.5 if block ~ ~ ~ #ttt:passable run function ttt:xmas/special_items/snowthrower_raycast