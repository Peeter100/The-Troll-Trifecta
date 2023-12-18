execute if score @s am_gamescore1 matches 3..6 as 00000001-0000-0000-0000-000000000000 at @s rotated ~ 0 positioned ^ ^ ^.25 run tp @s ~ ~0.5 ~
execute if score @s am_gamescore1 matches 7..9 as 00000001-0000-0000-0000-000000000000 at @s rotated ~ 0 positioned ^ ^ ^.25 run tp @s ~ ~0.35 ~
execute if score @s am_gamescore1 matches 10 as 00000001-0000-0000-0000-000000000000 at @s rotated ~ 0 positioned ^ ^ ^.25 run tp @s ~ ~0.12 ~
execute if score @s am_gamescore1 matches 11 as 00000001-0000-0000-0000-000000000000 at @s rotated ~ 0 positioned ^ ^ ^.25 run tp @s ~ ~-0.12 ~
execute if score @s am_gamescore1 matches 12..14 as 00000001-0000-0000-0000-000000000000 at @s rotated ~ 0 positioned ^ ^ ^.25 run tp @s ~ ~-0.35 ~
execute if score @s am_gamescore1 matches 15..18 as 00000001-0000-0000-0000-000000000000 at @s rotated ~ 0 positioned ^ ^ ^.25 run tp @s ~ ~-0.5 ~

execute if score @s am_gamescore1 matches 19.. at 00000001-0000-0000-0000-000000000000 run function ttt:finale/phase2/attack_groundjump_connect