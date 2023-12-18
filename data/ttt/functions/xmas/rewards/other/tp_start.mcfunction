tellraw @s {"text":"You got teleported to the beggining of the Act!","color":"green"}
execute unless score @e[type=marker,tag=sv,limit=1] act matches 3 run tp @s 0 30 43
execute if score @e[type=marker,tag=sv,limit=1] act matches 3 run tp @s -3 30 168