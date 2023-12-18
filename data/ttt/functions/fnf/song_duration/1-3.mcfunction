execute if score @s acttimer matches 1416 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 1430 run function ttt:fnf/spawn_down_player

execute if score @s acttimer matches 1416 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 1423 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 1430 run function ttt:fnf/spawn_up_enemy

execute if score @s acttimer matches 1452 run tag @s add stopbeat

execute if score @s acttimer matches 1478 run function ttt:fnf/animation_fakehit_up_enemy
execute if score @s acttimer matches 1484 run function ttt:fnf/animation_fakehit_right_enemy
execute if score @s acttimer matches 1478 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Alright,","color":"gold"}]

execute if score @s acttimer matches 1493 run function ttt:fnf/animation_fakehit_left_enemy
execute if score @s acttimer matches 1498 run function ttt:fnf/animation_fakehit_down_enemy
execute if score @s acttimer matches 1493 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"let's go.","color":"gold"}]

execute if score @s acttimer matches 1486 run function ttt:fnf/spawn_up_enemy
execute if score @s acttimer matches 1494 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 1498 run function ttt:fnf/spawn_left_enemy

execute if score @s acttimer matches 1508 run tag @s remove stopbeat
execute if score @s acttimer matches 1508 run function ttt:fnf/songsync

execute if score @s acttimer matches 1504 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 1508 run function ttt:fnf/spawn_right_enemy

execute if score @s acttimer matches 1515 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 1522 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 1525 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 1532 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 1536 run function ttt:fnf/spawn_right_player