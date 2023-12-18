execute if score @s acttimer matches 1000 at @p[tag=fnfplayer] run playsound custom.fnf.mischievous_world master @a ~ ~ ~ 1000
execute if score @s acttimer matches 1000 run title @a reset
#execute if score @s acttimer matches 1000 run title @a title {"text":"♫ Mischievous World ♫","color":"yellow","bold":"true"}
execute if score @s acttimer matches 1000 run title @a title [{"text":"♫ ","color":"yellow"},{"text":"Mischievous World","bold":true},{"text":" ♫"}]
execute if score @s acttimer matches 1000 run title @a subtitle {"text":"Made by Peeter100","color":"gold"}

execute if score @s acttimer matches 1007 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 1021 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 1035 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 1042 run function ttt:fnf/spawn_left_enemy
execute if score @s acttimer matches 1049 run function ttt:fnf/spawn_right_enemy
execute if score @s acttimer matches 1064 run function ttt:fnf/spawn_up_enemy
execute if score @s acttimer matches 1077 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 1091 run function ttt:fnf/spawn_up_player

execute if score @s acttimer matches 1120 run title @a reset
execute if score @s acttimer matches 1121 run title @a times 2 5 2

execute if score @s acttimer matches 1105 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 1120 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 1133 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 1148 run function ttt:fnf/spawn_down_player
execute if score @s acttimer matches 1155 run function ttt:fnf/spawn_left_player
execute if score @s acttimer matches 1162 run function ttt:fnf/spawn_right_player
execute if score @s acttimer matches 1176 run function ttt:fnf/spawn_up_player
execute if score @s acttimer matches 1190 run function ttt:fnf/spawn_down_player