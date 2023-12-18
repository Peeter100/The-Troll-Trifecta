execute as 00000004-0000-0000-0000-000000000000 if entity @s[tag=p2transition] at @s run tp @s ~ ~0.25 ~

scoreboard players add @s am_gamescore1 1
execute if score @s am_gamescore1 matches 3 run item replace entity 00000004-0000-0000-0000-000000000000 weapon.offhand with emerald{CustomModelData:105}
execute if score @s am_gamescore1 matches 5.. as 00000004-0000-0000-0000-000000000000 at @s anchored eyes run function ttt:finale/phase2/p100_attacktrollge
execute if score @s am_gamescore1 matches 5.. run scoreboard players set @s am_gamescore1 0

execute if score @s f3_attacktime matches ..0 run function ttt:finale/phase2/attack_convert_insky