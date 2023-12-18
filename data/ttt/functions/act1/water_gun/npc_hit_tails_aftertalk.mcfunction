stopsound @a master custom.t2s.tails.meeting_lmk
stopsound @a master custom.t2s.tails.river_cross_pre
stopsound @a master custom.t2s.tails.river_cross1
stopsound @a master custom.t2s.tails.river_cross2

execute as @e[type=marker,tag=sv] unless entity @s[scores={fnf_bulliedtails=3..,dialogueseq=3,dialoguetime=..299}] run function ttt:act1/water_gun/npc_hit_tails_lockfly
execute as @e[type=marker,tag=sv] if entity @s[scores={fnf_bulliedtails=3..,dialogueseq=3,dialoguetime=..299}] run function ttt:act1/water_gun/npc_hit_tails_templock
scoreboard players reset @a Game_Choice

scoreboard players set @e[type=marker,tag=sv] dialogueseq 3
execute at @e[type=armor_stand,tag=tailshead] anchored eyes facing entity @s eyes as @e[type=marker,tag=sv,limit=1] unless score @s dialoguetime matches 300..310 run function ttt:act1/water_gun/npc_hit_tails_stun