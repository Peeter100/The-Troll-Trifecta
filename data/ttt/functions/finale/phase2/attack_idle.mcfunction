execute at 00000001-0000-0000-0000-000000000000 as @e[tag=trollgevtarget] positioned ~ 15 ~ unless entity @s[distance=..5] facing entity @s eyes rotated ~ 0 positioned ^ ^ ^.2 positioned ~ 23 ~ anchored eyes run tp 00000001-0000-0000-0000-000000000000 ~ ~ ~ facing entity 00000004-0000-0000-0000-000000000000 eyes
execute at 00000004-0000-0000-0000-000000000000 as @e[tag=p100target] positioned ~ 15 ~ unless entity @s[distance=..5] facing entity @s eyes rotated ~ 0 positioned ^ ^ ^.2 positioned ~ 23.5 ~ anchored eyes run tp 00000004-0000-0000-0000-000000000000 ~ ~ ~ facing entity 00000001-0000-0000-0000-000000000000 eyes
#execute as 00000004-0000-0000-0000-000000000000 run function ttt:update_head_pose

execute at 00000004-0000-0000-0000-000000000000 as 00000001-0000-0000-0000-000000000000 positioned ~ 24 ~ if entity @s[distance=..12] as @e[type=marker,tag=sv,limit=1] run function ttt:finale/phase2/attack_flybash_convert
#execute if score @s dialogueseq matches 2 unless score @s f3_attackid matches 4 run function ttt:finale/phase2/attack_flybash_convert

execute if score @s f3_attacktime matches ..0 run function ttt:finale/phase2/attack_convert_insky