particle large_smoke ~ ~ ~ 0 0 0 0 1 force @a
particle smoke ~ ~ ~ .2 .2 .2 0 3 normal @a
execute positioned ~ ~-1.75 ~ unless entity @s[distance=..2] positioned ~ ~1.75 ~ positioned ^ ^ ^1 run function ttt:finale/phase1/trollge_beamattack_raycast