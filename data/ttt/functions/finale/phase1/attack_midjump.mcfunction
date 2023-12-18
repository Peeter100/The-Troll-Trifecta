scoreboard players add @s am_gamescore3 1

execute if score @s am_gamescore3 matches ..10 as 00000001-0000-0000-0000-000000000000 at @s positioned ^ ^ ^.5 run tp @s ~ ~0.3 ~
execute if score @s am_gamescore3 matches 11..15 as 00000001-0000-0000-0000-000000000000 at @s positioned ^ ^ ^.5 run tp @s ~ ~0.16 ~
execute if score @s am_gamescore3 matches 16..20 as 00000001-0000-0000-0000-000000000000 at @s positioned ^ ^ ^.5 run tp @s ~ ~0.05 ~
execute if score @s am_gamescore3 matches 21..24 as 00000001-0000-0000-0000-000000000000 at @s positioned ^ ^ ^.5 run tp @s ~ ~-0.05 ~
execute if score @s am_gamescore3 matches 25..29 as 00000001-0000-0000-0000-000000000000 at @s positioned ^ ^ ^.5 run tp @s ~ ~-0.16 ~
execute if score @s am_gamescore3 matches 30..39 as 00000001-0000-0000-0000-000000000000 at @s positioned ^ ^ ^.5 run tp @s ~ ~-0.3 ~

execute if score @s am_gamescore3 matches 40 at 00000001-0000-0000-0000-000000000000 run function ttt:finale/phase1/attack_midjump_connect
execute if score @s am_gamescore3 matches 50.. run function ttt:finale/phase1/attack_convert