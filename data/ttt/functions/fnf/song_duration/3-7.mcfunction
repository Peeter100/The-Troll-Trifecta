execute if score @s acttimer matches 4212 run function ttt:fnf/spawn_up_enemy
execute if score @s acttimer matches 4217 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 4220 run function ttt:fnf/spawn_up_enemy
execute if score @s acttimer matches 4225 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 4228 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 4231 run function ttt:fnf/spawn_right_enemy

execute if score @s acttimer matches 4233 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 4236 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 4239 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 4242 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 4245 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 4250 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 4256 run function ttt:fnf/spawn_firenote

execute if score @s acttimer matches 4297 run function ttt:fnf/songend
#execute if score @s acttimer matches 4299 run function ttt:fnf/songend

execute if score @s acttimer matches 4313 run data merge entity @e[type=armor_stand,tag=peeter1,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:8}},{}],Pose:{Head:[20f,0f,0f]}}
execute if score @s acttimer matches 4313 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"I wanted to win!","color":"gold"}]
execute if score @s acttimer matches 4350 run function ttt:fnf/songend_trollge
execute if score @s acttimer matches 4375 run function ttt:fnf/songend_forreal