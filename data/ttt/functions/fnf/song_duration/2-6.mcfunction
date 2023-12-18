execute if score @s acttimer matches 3110 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 3114 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 3117 run function ttt:fnf/spawn_up_enemy
execute if score @s acttimer matches 3124 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 3128 run function ttt:fnf/spawn_up_enemy

execute if score @s acttimer matches 3131 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 3135 run function ttt:fnf/spawn_up_enemy
execute if score @s acttimer matches 3138 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 3145 run function ttt:fnf/spawn_down_enemy

execute if score @s acttimer matches 3110 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 3124 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 3124..3136 if score @s fnf_hd_u matches 2.. run scoreboard players set @s fnf_hd_u 1
execute if score @s acttimer matches 3128 run function ttt:fnf/spawn_up_player_jack
execute if score @s acttimer matches 3131 run function ttt:fnf/spawn_up_player_jack
execute if score @s acttimer matches 3135 run function ttt:fnf/spawn_up_player_jack
execute if score @s acttimer matches 3138 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 3145 run function ttt:fnf/spawn_down_player

execute if score @s acttimer matches 3152 run function ttt:fnf/spawn_left_player

execute if score @s acttimer matches 3174 run function ttt:fnf/spawn_trollge
execute if score @s acttimer matches 3175 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"YOU'RE TAKING TOO LONG","color":"#942626","font":"trollge"}]
execute if score @s acttimer matches 3231 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"MAKE IT HARDER","color":"#942626","font":"trollge"}]
execute if score @s acttimer matches 3231 run function ttt:fnf/lyrics_start
execute if score @s acttimer matches 3231 run title @a title {"text":"MAKE","color":"#942626","font":"trollge"}
execute if score @s acttimer matches 3245 run title @a title {"text":"MAKE IT","color":"#942626","font":"trollge"}
execute if score @s acttimer matches 3259 run title @a title {"text":"MAKE IT HAR","color":"#942626","font":"trollge"}

execute if score @s acttimer matches 3265 run function ttt:fnf/spawn_down_player
#execute if score @s acttimer matches 3245 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"IT","color":"#942626","font":"trollge"}]
#execute if score @s acttimer matches 3259 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"HARDER","color":"#942626","font":"trollge"}]