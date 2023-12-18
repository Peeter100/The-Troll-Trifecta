execute if score @s acttimer matches ..4075 run function ttt:fnf/song_duration/3-4
execute if score @s acttimer matches 4076..4138 run function ttt:fnf/song_duration/3-5
execute if score @s acttimer matches 4139.. run function ttt:fnf/song_duration/3-6

scoreboard players add @s[tag=!stopbeat] fnf_beat 1
execute if score @s fnf_beat matches 11.. run scoreboard players add @s fnf_beatoff 1
execute if score @s fnf_beat matches 11.. run scoreboard players set @s fnf_beat 0
execute if score @s fnf_beatoff matches 4.. run scoreboard players set @s fnf_beatoff 0