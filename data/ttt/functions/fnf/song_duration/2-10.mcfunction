#execute as @e[tag=firearrow] at @s if block ~ ~ ~ #ttt:passable run data merge entity @s {Glowing:1b}

execute if score @s acttimer matches 3572 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 3576 run function ttt:fnf/spawn_right_enemy

execute if score @s acttimer matches 3576 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3590 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3593 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3597 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3601 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3604 run function ttt:fnf/spawn_right_player

execute if score @s acttimer matches 3604 run function ttt:fnf/spawn_firenote
execute if score @s acttimer matches 3604 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 3611 run function ttt:fnf/spawn_up_enemy
execute if score @s acttimer matches 3615 run function ttt:fnf/spawn_up_enemy
execute if score @s acttimer matches 3618 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 3625 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 3632 run function ttt:fnf/spawn_right_enemy

execute if score @s acttimer matches 3632 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3639 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3643 run function ttt:fnf/spawn_up_player_jack
execute if score @s acttimer matches 3646 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3653 run function ttt:fnf/spawn_down_player