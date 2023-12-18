# ..2474
# 170 BPM

execute if score @s acttimer matches ..1536 run function ttt:fnf/song_duration/half1q1
execute if score @s acttimer matches 1537..1875 run function ttt:fnf/song_duration/half1q2
execute if score @s acttimer matches 1876..2221 run function ttt:fnf/song_duration/half1q3
execute if score @s acttimer matches 2222.. run function ttt:fnf/song_duration/half1q4

scoreboard players add @s[tag=!stopbeat] fnf_beat 1
execute if score @s fnf_beat matches 14.. run scoreboard players add @s fnf_beatoff 1
execute if score @s fnf_beat matches 14.. run scoreboard players set @s fnf_beat 0
execute if score @s fnf_beatoff matches 4.. run scoreboard players remove @s fnf_beat 1
execute if score @s fnf_beatoff matches 4.. run scoreboard players set @s fnf_beatoff 0