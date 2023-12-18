# 3823..
# 200/220 BPM

execute if score @s acttimer matches ..4015 run function ttt:fnf/song_duration/half3q1
execute if score @s acttimer matches 4016..4206 run function ttt:fnf/song_duration/half3q2
execute if score @s acttimer matches 4207.. run function ttt:fnf/song_duration/half3q3

execute if score @s acttimer matches 4999 run scoreboard players set @s acttimer 4998