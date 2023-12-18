# act = 3
# actpart = ...

setblock 0 29 181 deepslate_brick_stairs[facing=south,half=bottom,shape=straight]
setblock -6 30 181 deepslate_brick_slab[type=bottom]
setblock -6 29 181 deepslate_brick_stairs[facing=east,half=top,shape=straight]
setblock 18 25 161 oak_stairs[facing=west,half=top,shape=straight]
fill 29 21 157 29 25 157 barrier
setblock 37 21 161 crafting_table

fill -4 29 262 -2 29 260 netherrack
setblock -3 30 261 gold_block
setblock -3 31 261 stone_button[face=floor,facing=south,powered=false]
setblock -3 30 260 birch_wall_sign{Color:"yellow",GlowingText:1b,Text1:'{"text":"===============","color":"yellow"}',Text2:'{"text":"FINISH THE MAP","color":"yellow"}',Text3:'{"text":"===============","color":"yellow"}'}

setblock -2 31 255 air
setblock -3 31 256 air
setblock -4 31 255 air
setblock -3 31 254 air
setblock -3 32 255 air

setblock -7 31 160 lever[powered=false,face=wall,facing=north]
setblock 1 31 160 lever[powered=false,face=wall,facing=north]
tag @s remove forcedtaskpregr

#setblock -3 31 261 stone_button[face=floor,facing=south,powered=false]
#fill -5 29 218 -1 29 224 minecraft:cracked_nether_bricks replace air
#setblock -5 29 225 minecraft:cracked_nether_bricks
#setblock -5 29 250 minecraft:cracked_nether_bricks
#fill -1 29 248 -2 29 247 minecraft:cracked_nether_bricks replace air
#setblock -5 29 246 minecraft:cracked_nether_bricks

# finale
fill -87 14 16 -81 23 26 air

# 2nd rick portal
execute unless entity @s[scores={am_played=4..,am_rickinteract=1..,am_seentrollge=1..}] run setblock -13 22 175 blackstone
execute unless entity @s[scores={am_played=4..,am_rickinteract=1..,am_seentrollge=1..}] run setblock -13 23 175 netherrack