tag @s add hittick
title @a subtitle {"text":"SICK!","color":"green","bold":true}
scoreboard players remove @s fnf_hp 7
execute if entity @s[scores={fnf_hp=..-1}] run scoreboard players set @s fnf_hp 0
execute store result bossbar minecraft:fnfhp value run scoreboard players get @s fnf_hp