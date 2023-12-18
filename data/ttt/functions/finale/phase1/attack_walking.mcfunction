## am_gamescore1
#alias entity trollgeai 00000001-0000-0000-0000-000000000000
#alias entity trollgefeet 00000002-0000-0000-0000-000000000000
#alias entity trollgearms 00000003-0000-0000-0000-000000000000

scoreboard players remove @s[scores={am_gamescore3=1..}] am_gamescore3 1
execute if score @s am_gamescore3 matches ..10 run function ttt:finale/phase1/attack_walking_anim
execute if score @s am_gamescore3 matches 11.. run function ttt:finale/phase1/attack_walking_danger

execute if score @s f3_attacktime matches ..0 unless score @s am_gamescore3 matches 11.. run function ttt:finale/phase1/attack_convert
execute at 00000001-0000-0000-0000-000000000000 if entity @a[team=p,distance=..5] run scoreboard players set @s[scores={am_gamescore3=0}] am_gamescore3 41