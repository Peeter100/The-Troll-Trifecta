tag @s add hittick
title @a subtitle {"text":"BAD","color":"red"}
execute if entity @s[scores={fnf_mt=0..2}] run scoreboard players add @s fnf_hp 3
execute if entity @s[scores={fnf_mt=3..12}] run scoreboard players add @s fnf_hp 5
execute if entity @s[scores={fnf_mt=13..27}] run scoreboard players add @s fnf_hp 9
execute if entity @s[scores={fnf_mt=28..}] run scoreboard players add @s fnf_hp 12
scoreboard players add @s fnf_mt 8
#execute if entity @s[scores={fnf_rank=3..}] run scoreboard players set @s fnf_rank 2
execute store result bossbar minecraft:fnfhp value run scoreboard players get @s fnf_hp

execute if entity @s[scores={fnf_hp=100..}] run scoreboard players set @s acttimer 5000

# OLD VALUES
# (after input engine change)
# 1 --> 3
# 2 --> 5
# 4 --> 9
# 6 --> 12