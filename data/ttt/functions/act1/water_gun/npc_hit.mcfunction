tag @s add wgunhit
execute if entity @e[type=villager,tag=wguntarget,distance=..4] run function ttt:act1/water_gun/npc_hit_villager
execute if entity @e[type=armor_stand,tag=wguntarget,tag=goomba,distance=..4] run function ttt:act1/water_gun/npc_hit_goomba
execute if entity @e[type=armor_stand,tag=wguntarget,tag=tailshead,distance=..4] unless score @e[type=marker,tag=sv,limit=1] dialogueseq matches 4.. run function ttt:act1/water_gun/npc_hit_tails
execute if entity @e[type=armor_stand,tag=wguntarget,tag=sniper,distance=..4] as @e[type=marker,tag=sv,limit=1] unless score @s dialogueseq matches 4.. run function ttt:act1/water_gun/npc_hit_sniper