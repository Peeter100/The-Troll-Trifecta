## ~113 for tick adjusting
# 3378 --> 3265
# 3385 --> 3272
# 3392 --> 3279

execute if score @s acttimer matches 3273 run title @a title {"text":"MAKE IT HARDER","color":"#942626","font":"trollge"}
execute if score @s acttimer matches 3287 run function ttt:fnf/spawn_trollge_restore

execute if score @s acttimer matches 3272 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3279 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3293 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3300 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3304 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3311 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3315 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3322 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3329 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3336 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3350 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3354 run function ttt:fnf/spawn_down_player_jack
execute if score @s acttimer matches 3357 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3361 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3367 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3371 run function ttt:fnf/spawn_left_player

execute if score @s acttimer matches 3378 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3381 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3385 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 3388 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3392 run function ttt:fnf/spawn_left_player

execute if score @s acttimer matches 3398 run function ttt:fnf/animation_fakehit_down_enemy
execute if score @s acttimer matches 3398 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Use spacebar to dodge!","color":"gold"}]
execute if score @s acttimer matches 3398 run function ttt:fnf/lyrics_start
execute if score @s acttimer matches 3398 run title @a title {"text":"Use","color":"gold"}

scoreboard players set @s[scores={fnf_ad_p=..4}] fnf_ad_p 5