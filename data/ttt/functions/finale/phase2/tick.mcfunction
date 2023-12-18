## f3_attackid
# -1 - stunned
# 0 - idling (awaiting attack)
# 1 - trollge shooting
# 2 - p100 shooting
# 3 - player jumping - more frequent if there is player w/ no energy
# 4 - charging (air) - only if in id0 get close
# 5 - charging (ground) - rare after id4

# am_gamescore1 --> stupid attack stuff that f3_attacktime breaks

#alias entity trollgeai 00000001-0000-0000-0000-000000000000
#alias entity trollgefeet 00000002-0000-0000-0000-000000000000
#alias entity trollgearms 00000003-0000-0000-0000-000000000000
#alias entity p100 00000004-0000-0000-0000-000000000000
#alias entity healorb 00000005-0000-0000-0000-000000000000
#alias entity iffighting .trollgefight

scoreboard players remove @s f3_attacktime 1

execute if score @s f3_attackid matches 0 run function ttt:finale/phase2/attack_idle
execute if score @s f3_attackid matches 1 run function ttt:finale/phase2/attack_bossfire
execute if score @s f3_attackid matches 2 run function ttt:finale/phase2/attack_p100fire
execute if score @s f3_attackid matches 3 run function ttt:finale/phase2/attack_groundjump
execute if score @s f3_attackid matches 4 run function ttt:finale/phase2/attack_flybash

execute store result bossbar trollgebar value run scoreboard players get @s f3_bosshp
tp @e[type=armor_stand,tag=trollge] 00000001-0000-0000-0000-000000000000

execute as 00000005-0000-0000-0000-000000000000 at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=vex,tag=!forkill] run function ttt:finale/phase2/vex_transform
kill @e[type=arrow,nbt={inGround:1b}]

execute as @e[type=armor_stand,tag=watcherhead] at @s anchored eyes run function ttt:finale/npc_look
execute if score @s dialogueseq matches 2 as @a[team=p] at @s run function ttt:finale/phase2/tick_player_alt
execute if score @s dialogueseq matches 3 as @a[team=p] at @s run function ttt:finale/phase2/tick_player

execute if score @s f3_bosshp matches ..0 run function ttt:finale/phase2/defeat