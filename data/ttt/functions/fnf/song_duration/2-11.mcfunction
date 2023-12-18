#execute as @e[tag=firearrow] at @s if block ~ ~ ~ #ttt:passable run data merge entity @s {Glowing:1b}

execute if score @s acttimer matches 3660 run function ttt:fnf/spawn_right_player

execute if score @s acttimer matches 3660 run function ttt:fnf/spawn_firenote
execute if score @s acttimer matches 3660 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 3667 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 3674 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 3678 run function ttt:fnf/spawn_up_enemy
execute if score @s acttimer matches 3681 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 3685 run function ttt:fnf/spawn_left_enemy

execute if score @s acttimer matches 3688 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3695 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3702 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3706 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3710 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3714 run function ttt:fnf/spawn_left_player

execute if score @s acttimer matches 3717 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 3724 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 3728 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 3731 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 3738 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 3745 run function ttt:fnf/spawn_up_enemy

execute if score @s acttimer matches 3745 run function ttt:fnf/spawn_down_player