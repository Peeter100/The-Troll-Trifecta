## Giving time for spawned-in models to settle
## Do any scoreboard precalculations here

execute unless entity @s[scores={am_gametimer=3,am_gameid=1}] run scoreboard players add @s am_gametimer 1
title @a actionbar {"text":"LOADING TASK...","color":"white"}
effect clear @a[tag=amplayer] speed


execute if entity @s[scores={am_gametimer=3,am_gameid=1}] run function ttt:amogus/minigames/id1/attempt_spawn_scatter
execute if entity @s[scores={am_gametimer=5,am_gameid=4}] run execute as @r[tag=amplayer] at @s run playsound custom.t2s.baldi.vase_intro master @a ~ ~ ~ 1000


execute if entity @s[scores={am_gametimer=10}] run function ttt:amogus/minigames/task_start