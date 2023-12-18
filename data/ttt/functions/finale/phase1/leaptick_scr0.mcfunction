execute if score @s f3_attacktime matches 190.. as 00000001-0000-0000-0000-000000000000 at @s rotated ~ 0 positioned ^ ^ ^.25 run tp @s ~ ~0.3 ~
execute if score @s f3_attacktime matches 185..189 as 00000001-0000-0000-0000-000000000000 at @s rotated ~ 0 positioned ^ ^ ^.25 run tp @s ~ ~0.16 ~
execute if score @s f3_attacktime matches 180..184 as 00000001-0000-0000-0000-000000000000 at @s rotated ~ 0 positioned ^ ^ ^.25 run tp @s ~ ~0.05 ~
execute if score @s f3_attacktime matches 176..179 as 00000001-0000-0000-0000-000000000000 at @s rotated ~ 0 positioned ^ ^ ^.25 run tp @s ~ ~-0.05 ~
execute if score @s f3_attacktime matches 171..175 as 00000001-0000-0000-0000-000000000000 at @s rotated ~ 0 positioned ^ ^ ^.25 run tp @s ~ ~-0.16 ~
execute if score @s f3_attacktime matches 161..170 as 00000001-0000-0000-0000-000000000000 at @s rotated ~ 0 positioned ^ ^ ^.25 run tp @s ~ ~-0.3 ~

execute if score @s f3_attacktime matches 160 at 00000001-0000-0000-0000-000000000000 run function ttt:finale/phase1/attack_jumping_connect
execute if score @s f3_attacktime matches ..150 run function ttt:finale/phase1/attack_convert