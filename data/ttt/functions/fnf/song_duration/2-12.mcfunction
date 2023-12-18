#execute as @e[tag=firearrow] at @s if block ~ ~ ~ #ttt:passable run data merge entity @s {Glowing:1b}

execute if score @s acttimer matches 3752 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3759 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3766 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3773 run function ttt:fnf/spawn_up_player

execute if score @s acttimer matches 3773 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 3773 run function ttt:fnf/spawn_firenote
execute if score @s acttimer matches 3784 run function ttt:fnf/spawn_firenote
execute if score @s acttimer matches 3787 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 3795 run function ttt:fnf/spawn_firenote

# BPM switch 170 --> 200
execute if score @s acttimer matches 3801 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 3807 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 3811 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 3817 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 3821 run function ttt:fnf/spawn_left_enemy