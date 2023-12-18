execute if score @s acttimer matches ..3891 run function ttt:fnf/song_duration/3-1
execute if score @s acttimer matches 3892..3967 run function ttt:fnf/song_duration/3-2
execute if score @s acttimer matches 3968.. run function ttt:fnf/song_duration/3-3

scoreboard players add @s[tag=!stopbeat] fnf_beat 1
execute if score @s fnf_beat matches 12.. run scoreboard players add @s fnf_beatoff 1
execute if score @s fnf_beat matches 12.. run scoreboard players set @s fnf_beat 0
execute if score @s fnf_beatoff matches 4.. run scoreboard players set @s fnf_beatoff 0