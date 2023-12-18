execute if score @s f3_attacktime matches 10.. as 00000001-0000-0000-0000-000000000000 at @s anchored feet positioned ^ ^ ^-0.25 run tp @s ~ 15 ~
execute if score @s f3_attacktime matches 7..9 as 00000001-0000-0000-0000-000000000000 at @s anchored feet positioned ^ ^ ^-0.18 run tp @s ~ 15 ~
execute if score @s f3_attacktime matches 4..6 as 00000001-0000-0000-0000-000000000000 at @s anchored feet positioned ^ ^ ^-0.11 run tp @s ~ 15 ~
execute if score @s f3_attacktime matches ..3 as 00000001-0000-0000-0000-000000000000 at @s anchored feet positioned ^ ^ ^-0.05 run tp @s ~ 15 ~
execute if score @s f3_attacktime matches ..0 run function ttt:finale/phase1/attack_convert