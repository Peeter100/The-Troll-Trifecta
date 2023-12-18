scoreboard players add @s am_gamescore1 1

execute if score @s am_gamescore1 matches ..3 as 00000001-0000-0000-0000-000000000000 at @s positioned ^ ^ ^.5 run tp @s ~ ~-0.12 ~
execute if score @s am_gamescore1 matches 4..8 as 00000001-0000-0000-0000-000000000000 at @s positioned ^ ^ ^.5 run tp @s ~ ~-0.35 ~
execute if score @s am_gamescore1 matches 9.. as 00000001-0000-0000-0000-000000000000 at @s positioned ^ ^ ^.5 run tp @s ~ ~-0.5 ~

execute as 00000001-0000-0000-0000-000000000000 at @s if entity @s[y=15,dy=0] as @e[type=marker,tag=sv,limit=1] run function ttt:finale/phase2/attack_groundjump_connect