## f3_attackid
# -1 - stunned
# 0 - idling (awaiting attack)
# 1 - walking (pounds when close)
# 2 - charging (explode when close)
# 3 - jumping
# 4 - thunderstorm
# 5 - jumping to middle

# am_gamescore1 --> trollge animation
# am_gamescore2 --> ??
# am_gamescore3 --> stupid attack stuff that f3_attacktime breaks

#alias entity trollgeai 00000001-0000-0000-0000-000000000000
#alias entity trollgefeet 00000002-0000-0000-0000-000000000000
#alias entity trollgearms 00000003-0000-0000-0000-000000000000
#alias entity p100 00000004-0000-0000-0000-000000000000
#alias entity healorb 00000005-0000-0000-0000-000000000000
#alias entity iffighting .trollgefight

scoreboard players add @s am_gamescore1 1
scoreboard players remove @s f3_attacktime 1

execute unless score @s f3_attackid matches 5 at 00000001-0000-0000-0000-000000000000 if block ~ 14 ~ air run function ttt:finale/phase1/attack_midjump_convert

execute if score @s f3_attackid matches -1 run function ttt:finale/phase1/attack_stun
execute if score @s f3_attackid matches 0 run function ttt:finale/phase1/attack_idle
execute if score @s f3_attackid matches 1 run function ttt:finale/phase1/attack_walking
execute if score @s f3_attackid matches 2 run function ttt:finale/phase1/attack_charging
execute if score @s f3_attackid matches 3 run function ttt:finale/phase1/attack_jumping
execute if score @s f3_attackid matches 4 run function ttt:finale/phase1/attack_thunder
execute if score @s f3_attackid matches 5 run function ttt:finale/phase1/attack_midjump

execute unless score @s f3_attackid matches 0 as 00000004-0000-0000-0000-000000000000 at @s run function ttt:finale/phase1/p100_baseai

execute store result score @s f3_bosshp run data get entity 00000001-0000-0000-0000-000000000000 Health
execute store result bossbar trollgebar value run scoreboard players get @s f3_bosshp
tp @e[type=armor_stand,tag=trollge] 00000001-0000-0000-0000-000000000000

execute as 00000005-0000-0000-0000-000000000000 at @s run tp @s ~ ~ ~ ~10 ~
kill @e[type=arrow,nbt={inGround:1b}]

execute as @e[type=armor_stand,tag=watcherhead] at @s anchored eyes run function ttt:finale/npc_look
execute as @a[team=p] at @s run function ttt:finale/phase1/tick_player

execute if score @s f3_bosshp <= @s f3_healthmargin run function ttt:finale/phase2/begin_p2