scoreboard players remove @s weight 1

execute if entity @s[scores={weight=24}] run effect clear @s slowness
execute if entity @s[scores={weight=24}] run effect give @s slowness 99999 2 true

execute if entity @s[scores={weight=16}] run effect clear @s slowness
execute if entity @s[scores={weight=16}] run effect give @s slowness 99999 1 true

execute if entity @s[scores={weight=8}] run effect clear @s slowness
execute if entity @s[scores={weight=8}] run effect give @s slowness 99999 0 true

execute if entity @s[scores={weight=0}] run effect clear @s slowness
execute if entity @s[scores={weight=0}] run tag @s remove hungertext
execute if entity @s[scores={weight=0}] run tag @s remove offground
execute if entity @s[scores={weight=0}] run tag @s remove weightanim