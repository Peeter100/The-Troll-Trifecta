# Ran as amogai

execute unless entity @e[type=armor_stand,tag=amogdead,distance=0..6] unless block ^ ^ ^0.21 iron_block run tp @s ^ ^ ^0.21
execute unless entity @e[type=armor_stand,tag=amogdead,distance=0..6] if block ^ ^ ^0.21 iron_block if entity @s[tag=noticedmurder] run function ttt:amogus/ai/dead_bodies/convert_body_to_emergency
execute if entity @e[type=armor_stand,tag=amogdead,distance=0..6] unless entity @e[type=armor_stand,tag=reported] run function ttt:amogus/ai/dead_bodies/report