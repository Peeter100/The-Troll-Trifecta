effect give @a[team=p] invisibility 99999 0 true
title @a actionbar {"text":"LOADING...","color":"white"}

# These 40 ticks are given so the server can catch up if it has a massive lagspike
execute if score @s acttimer matches 53 run function ttt:amogus/preload_level_schemas
execute if score @s acttimer matches 55 run function ttt:amogus/preload_entities_part1
execute if score @s acttimer matches 58 if score @s am_crewmates > @s am_lvl_crewmates run function ttt:amogus/preload_killcrewmates
execute if score @s acttimer matches 60 run function ttt:amogus/preload_entities_part2
execute if score @s acttimer matches 95 run function ttt:amogus/preload_scoreboards
execute if score @s acttimer matches 99 run function ttt:amogus/preload_finish