# Force the player to play the TROLLGE minigame at least once per game
execute if score @s am_seentrollge matches 0 run tag @s add forceid1
execute if score @s am_seentrollge matches 1 if entity @s[scores={am_crewmates=..5,am_level=6..}] run tag @s add forceid1
execute if score @s am_seentrollge matches 1 if entity @s[scores={am_crewmates=..4,am_level=..5}] run tag @s add forceid1
execute if entity @s[tag=forceid1] run function ttt:amogus/minigames/convertid/id1

# Force the player to see Shadow & Tails at least once so act3/part3 makes sense
execute if score @s am_seentails matches 0 unless entity @s[tag=forcedtask] run function ttt:amogus/minigames/convertid/id3
execute if score @s am_seenshadow matches 0 if score @s am_seentails matches 1.. unless entity @s[tag=forcedtask] run function ttt:amogus/minigames/convertid/id2

tag @s remove forcedtaskpregr
#execute if entity @s[tag=forcedtask] run tag @s add forcedtaskpregr
execute if entity @s[tag=forcedtask] unless score @s am_gamegroup matches 1 run tag @s add forcedtaskpregr

# Task grouping (BETA)
execute unless entity @s[tag=forcedtask] if score @s am_gamegroup matches 1 run function ttt:amogus/minigames/convertid/gamegroup1
execute unless entity @s[tag=forcedtask] if score @s am_gamegroup matches 2 run function ttt:amogus/minigames/convertid/gamegroup2seq
execute unless entity @s[tag=forcedtask] if score @s am_gamegroup matches 3 run function ttt:amogus/minigames/convertid/gamegroup3seq

tag @s remove forceid1
tag @s remove forcedtask