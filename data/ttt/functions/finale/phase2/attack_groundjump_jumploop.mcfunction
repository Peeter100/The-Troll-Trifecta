scoreboard players add @s am_gamescore1 1

execute if score @s am_gamescore1 matches 3 if score @s f3_attackcombo matches ..5 run function ttt:finale/phase2/attack_groundjump_rejump
execute if score @s am_gamescore1 matches 3 if score @s f3_attackcombo matches 6.. run function ttt:finale/phase2/attack_p100fire_convert

execute if score @s am_gamescore2 matches 0 run function ttt:finale/phase2/leaptick_scr0
execute if score @s am_gamescore2 matches 1 run function ttt:finale/phase2/leaptick_scr1
execute if score @s am_gamescore2 matches 2 run function ttt:finale/phase2/leaptick_scr2
execute if score @s am_gamescore2 matches 3 run function ttt:finale/phase2/leaptick_scr3

execute unless score @s f3_attackid matches 2 at 00000001-0000-0000-0000-000000000000 if block ~ 14 ~ air run function ttt:finale/phase2/attack_p100fire_convert