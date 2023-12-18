execute if score @s acttimer matches 3011 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3015 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3018 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3021 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3025 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3032 run function ttt:fnf/spawn_down_player

execute if score @s acttimer matches 3011 run function ttt:fnf/spawn_up_enemy
execute if score @s acttimer matches 3025 run function ttt:fnf/spawn_right_enemy

scoreboard players set @s[scores={fnf_ad_p=..4}] fnf_ad_p 5

execute if score @s acttimer matches 3039 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 3053 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 3060 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 3067 run function ttt:fnf/spawn_up_enemy
execute if score @s acttimer matches 3071 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 3075 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 3078 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 3082 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 3089 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 3096 run function ttt:fnf/spawn_down_enemy

execute if score @s acttimer matches 3039 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3053 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3067 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3082 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3096 run function ttt:fnf/spawn_left_player