tag @s add hittick
title @a subtitle {"text":"GOOD","color":"green"}
scoreboard players remove @s fnf_hp 2
execute if entity @s[scores={fnf_hp=..-1}] run scoreboard players set @s fnf_hp 0
#execute if entity @s[scores={fnf_rank=4}] run scoreboard players set @e[tag=sv] fnf_rank 3
execute store result bossbar minecraft:fnfhp value run scoreboard players get @s fnf_hp