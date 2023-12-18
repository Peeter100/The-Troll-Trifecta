scoreboard players add @s dialoguetime 1

execute as @e[type=armor_stand,tag=tails,limit=1] at @s run tp @a[team=p] ~ ~-0.75 ~-0.1
execute if score @s dialoguetime matches 5005.. as @e[type=armor_stand,tag=tails] at @s run tp @s ~ ~ ~0.345 0 0

execute as @e[type=armor_stand,tag=tailsarms,limit=1] store result score @s npcbodytp run data get entity @s Pos[2]
execute as @e[type=armor_stand,tag=tailsarms,limit=1] at @s if score @s npcbodytp matches 251.. run function ttt:act3/aftermogus/tails_fly_stop_carry