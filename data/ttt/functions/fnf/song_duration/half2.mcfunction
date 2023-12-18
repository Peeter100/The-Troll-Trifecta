# 2475..3822
# 170 BPM

execute if score @s acttimer matches ..2884 run function ttt:fnf/song_duration/half2q1
execute if score @s acttimer matches 2885..3265 run function ttt:fnf/song_duration/half2q2
execute if score @s acttimer matches 3266..3571 run function ttt:fnf/song_duration/half2q3
execute if score @s acttimer matches 3572.. run function ttt:fnf/song_duration/half2q4

scoreboard players add @s[tag=!stopbeat] fnf_beat 1
execute if score @s fnf_beat matches 14.. run scoreboard players add @s fnf_beatoff 1
execute if score @s fnf_beat matches 14.. run scoreboard players set @s fnf_beat 0
execute if score @s fnf_beatoff matches 4.. run scoreboard players remove @s fnf_beat 1
execute if score @s fnf_beatoff matches 4.. run scoreboard players set @s fnf_beatoff 0