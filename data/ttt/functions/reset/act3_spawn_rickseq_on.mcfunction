execute if score @s am_seentrollge matches ..0 run function ttt:reset/act3_spawn_rickseq1
execute if score @s am_seentrollge matches 1.. run function ttt:reset/act3_spawn_rickseq2

# rickseq entry
fill -14 16 210 -14 17 210 air
setblock -2 15 214 crimson_sign[rotation=4]{Color:"red",GlowingText:1b,Text1:'{"text":"===============","color":"red"}',Text2:'{"text":"OUT OF ORDER","color":"red"}',Text3:'{"text":"===============","color":"red"}',Text4:'{"text":"Look behind you","color":"red"}'}