scoreboard players add @s am_gamescore3 1
execute if score @s am_gamescore3 matches 3 run item replace entity 00000003-0000-0000-0000-000000000000 weapon.mainhand with chain{CustomModelData:64}
execute if score @s am_gamescore3 matches 5.. run function ttt:finale/phase1/attack_idle_connect

execute if score @s f3_attacktime matches ..0 run function ttt:finale/phase1/attack_jumping_convert