execute if score @s acttimer matches 3422 run title @a title {"text":"Use space","color":"gold"}
execute if score @s acttimer matches 3422 run function ttt:fnf/animation_fakehit_right_enemy
execute if score @s acttimer matches 3454 run title @a title {"text":"Use spacebar","color":"gold"}
execute if score @s acttimer matches 3454 run function ttt:fnf/animation_fakehit_up_enemy
execute if score @s acttimer matches 3484 run title @a title {"text":"Use spacebar to","color":"gold"}
execute if score @s acttimer matches 3484 run function ttt:fnf/animation_fakehit_down_enemy

execute if score @s acttimer matches 3399 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3403 run function ttt:fnf/spawn_down_player_jack
execute if score @s acttimer matches 3406 run function ttt:fnf/spawn_right_player

execute if score @s acttimer matches 3413 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3420 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3427 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3434 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3442 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3449 run function ttt:fnf/spawn_up_player
# spam
execute if score @s acttimer matches 3462 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3464 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3466 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3469 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3471 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3473 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3477 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3481 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3484 run function ttt:fnf/spawn_right_player

scoreboard players set @s[scores={fnf_ad_p=..4}] fnf_ad_p 5