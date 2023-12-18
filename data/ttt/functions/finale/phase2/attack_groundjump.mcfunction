execute at 00000004-0000-0000-0000-000000000000 as @e[tag=p100target] positioned ~ 15 ~ unless entity @s[distance=..5] facing entity @s eyes rotated ~ 0 positioned ^ ^ ^.2 positioned ~ 23.5 ~ anchored eyes run tp 00000004-0000-0000-0000-000000000000 ~ ~ ~ facing entity 00000001-0000-0000-0000-000000000000 eyes
execute as 00000004-0000-0000-0000-000000000000 run function ttt:update_head_pose

execute if score @s f3_attackcombo matches 1.. run function ttt:finale/phase2/attack_groundjump_jumploop
execute if score @s f3_attackcombo matches 0 if score @s f3_attackid matches 3 run function ttt:finale/phase2/attack_groundjump_dropdown