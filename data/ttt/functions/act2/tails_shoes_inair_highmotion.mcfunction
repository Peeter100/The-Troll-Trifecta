execute unless entity @s[scores={y=31..,z=17..37}] run effect give @s resistance 1 255 true

execute store result score @s shoes_ydistance run data get entity @s FallDistance 10
execute if score @s shoes_ydistance matches 25.. run effect give @s jump_boost 1 200 true

execute if entity @s[nbt={OnGround:1b}] run function ttt:act2/tails_shoes_inair_tryland
execute if score @s caxis1 = @s caxis2 run function ttt:act2/tails_shoes_jumpclear