effect clear @s jump_boost
tag @s remove sh_inair
execute store result score @s shoes_ydistance run data get entity @s FallDistance 10
execute if score @s shoes_ydistance matches 25.. unless entity @s[scores={y=31..,z=17..37}] run effect give @s resistance 1 255 true
#execute if score @s shoes_ydistance matches 3.. unless score @s z matches 17..37 run effect give @s resistance 1 255 true

#execute if score @s caxis1 = @s caxis2 run function ttt:act2/tails_shoes_jumpclear