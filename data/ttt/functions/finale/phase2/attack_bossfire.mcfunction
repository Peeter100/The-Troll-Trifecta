scoreboard players add @s am_gamescore1 1
execute if score @s am_gamescore1 matches 3 run item replace entity 00000003-0000-0000-0000-000000000000 weapon.mainhand with chain{CustomModelData:214}
execute if score @s am_gamescore1 matches 5.. as 00000001-0000-0000-0000-000000000000 at @s anchored eyes run function ttt:finale/phase2/trollge_attackp100
execute if score @s am_gamescore1 matches 5.. run scoreboard players set @s am_gamescore1 0

execute if score @s f3_attacktime matches ..0 run function ttt:finale/phase2/attack_convert_insky