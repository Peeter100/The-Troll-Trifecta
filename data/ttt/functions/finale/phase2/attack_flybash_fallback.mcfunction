scoreboard players remove @s am_gamescore1 1

execute as 00000001-0000-0000-0000-000000000000 at @s run tp @s ^ ^ ^-0.5
execute as 00000004-0000-0000-0000-000000000000 at @s run tp @s ^ ^ ^-0.5

execute if score @s am_gamescore1 matches 1 run function ttt:finale/phase2/attack_flybash_fallback_end