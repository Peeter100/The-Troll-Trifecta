tag @s add snowthrowing
playsound block.snow.break master @a ~ ~ ~
playsound block.snow.break master @a ~ ~ ~
playsound block.snow.break master @a ~ ~ ~
scoreboard players set .sthrowercast npcbodytp 0
execute anchored eyes positioned ^ ^ ^0.5 run function ttt:xmas/special_items/snowthrower_raycast
tag @s remove snowthrowing