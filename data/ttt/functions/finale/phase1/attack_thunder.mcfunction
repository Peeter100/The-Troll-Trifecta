#alias entity trollgeai 00000001-0000-0000-0000-000000000000
#alias entity trollgefeet 00000002-0000-0000-0000-000000000000
#alias entity trollgearms 00000003-0000-0000-0000-000000000000

scoreboard players add @s am_gamescore3 1
execute if score @s am_gamescore3 matches 5.. run function ttt:finale/phase1/attack_thunder_connect

execute if score @s f3_attacktime matches ..0 run function ttt:finale/phase1/attack_convert