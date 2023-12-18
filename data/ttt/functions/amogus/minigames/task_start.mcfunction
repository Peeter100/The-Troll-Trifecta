####################
# START PROCEDURES #
####################

# GLOBAL

title @a actionbar {"text":""}
execute unless entity @s[scores={am_gameid=4..6}] unless entity @s[scores={am_gameid=10..}] run effect clear @a[tag=amplayer] jump_boost
scoreboard players set @a[tag=amplayer] rc 0

## execute if entity @s[scores={am_gameimportant=0,am_sabid=3}] run scoreboard players set @s am_sabtimer 160

execute if entity @s[scores={am_gameimportant=1}] run bossbar set minecraft:amogbar visible false
execute if entity @s[scores={am_gameid=1,am_sabid=1..}] run stopsound @a master custom.amogus.alarm
execute if entity @s[scores={am_gameimportant=1,am_sabid=1..}] run function ttt:amogus/minigames/task_nullify_sabotage
execute if entity @s[scores={am_sabid=1..2}] run function ttt:amogus/ai/playerloc/force_check_raycast


# INDIVIDUAL

execute if entity @s[scores={am_gameid=1}] run function ttt:amogus/minigames/id1/minigame_start
execute if entity @s[scores={am_gameid=2}] run function ttt:amogus/minigames/id2/minigame_start
execute if entity @s[scores={am_gameid=3}] run function ttt:amogus/minigames/id3/minigame_start
execute if entity @s[scores={am_gameid=4}] run function ttt:amogus/minigames/id4/minigame_start
execute if entity @s[scores={am_gameid=5}] run function ttt:amogus/minigames/id5/minigame_start
execute if entity @s[scores={am_gameid=6}] run function ttt:amogus/minigames/id6/minigame_start
execute if entity @s[scores={am_gameid=7}] run tp @a 32 34 140 -180 0
execute if entity @s[scores={am_gameid=8}] run tp @a -38 44 92 45 0
execute if entity @s[scores={am_gameid=9}] run tp @a -48 21 88 90 0
execute if entity @s[scores={am_gameid=10}] run function ttt:amogus/minigames/id10/minigame_start
execute if entity @s[scores={am_gameid=11}] run tp @a -4 22 93 180 0
execute if entity @s[scores={am_gameid=12}] run function ttt:amogus/minigames/id12/minigame_start