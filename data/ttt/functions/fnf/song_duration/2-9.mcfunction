#execute as @e[tag=firearrow] at @s if block ~ ~ ~ #ttt:passable run data merge entity @s {Glowing:1b}

execute if score @s acttimer matches 3499 run title @a title {"text":"Use spacebar to dodge!","color":"gold"}
execute if score @s acttimer matches 3499 run function ttt:fnf/animation_fakehit_left_enemy

execute if score @s acttimer matches 3487 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3490 run function ttt:fnf/spawn_up_player

execute if score @s acttimer matches 3512 run function ttt:fnf/lyrics_end

execute if score @s acttimer matches 3490 run function ttt:fnf/spawn_up_enemy
execute if score @s acttimer matches 3490 run function ttt:fnf/spawn_firenote
execute if score @s acttimer matches 3498 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 3501 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 3509 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 3513 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 3512 run function ttt:fnf/songsync

execute if score @s acttimer matches 3519 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3526 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3530 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3537 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3541 run function ttt:fnf/spawn_right_player

execute if score @s acttimer matches 3547 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 3561 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 3565 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 3569 run function ttt:fnf/spawn_up_enemy