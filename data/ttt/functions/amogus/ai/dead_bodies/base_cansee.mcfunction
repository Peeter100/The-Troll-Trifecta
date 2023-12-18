tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=amogdead,limit=1,sort=nearest] eyes
execute rotated as @s run tp @s ~ ~ ~ ~ 0
data merge entity @s {NoAI:1b}