## Undercharting to make it possible with the engine :)
#execute if score @s acttimer matches 3970 run function ttt:fnf/spawn_up_player
#execute if score @s acttimer matches 3971 run function ttt:fnf/spawn_right_player
#execute if score @s acttimer matches 3973 run function ttt:fnf/spawn_left_player
#execute if score @s acttimer matches 3974 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3970 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3972 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3974 run function ttt:fnf/spawn_right_player

execute if score @s acttimer matches 3976 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3979 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3982 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3987 run function ttt:fnf/spawn_left_player

execute if score @s acttimer matches 3994 run function ttt:fnf/spawn_firenote
execute if score @s acttimer matches 3994 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3994.. run scoreboard players set @s[scores={fnf_ad_bf=..4}] fnf_ad_bf 5
execute if score @s acttimer matches 4015 run function ttt:fnf/spawn_right_player

execute if score @s acttimer matches 3994 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 3996 run function ttt:fnf/spawn_up_enemy
execute if score @s acttimer matches 3999 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 4001 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 4004 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 4006 run function ttt:fnf/spawn_up_enemy
execute if score @s acttimer matches 4009 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 4011 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 4015 run function ttt:fnf/spawn_down_enemy