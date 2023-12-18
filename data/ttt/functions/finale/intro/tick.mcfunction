## f3_attackid
# -1 - stunned
# 0 - idling (awaiting attack)
# 1 - walking (pounds when close)
# 2 - charging (explode when close)
# 3 - jumping
# 4 - jumping to middle

#alias entity trollgeai 00000001-0000-0000-0000-000000000000
#alias entity trollgefeet 00000002-0000-0000-0000-000000000000
#alias entity trollgearms 00000003-0000-0000-0000-000000000000

scoreboard players add @s am_gamescore1 1
scoreboard players remove @s f3_attacktime 1

execute if score @s f3_attackid matches 0 run function ttt:finale/intro/attack_idle
execute if score @s f3_attackid matches 2 run function ttt:finale/intro/attack_charging

execute store result bossbar trollgebar value run data get entity 00000001-0000-0000-0000-000000000000 Health
tp @e[type=armor_stand,tag=trollge] 00000001-0000-0000-0000-000000000000

execute as @a[team=p] at @s if score @s y matches ..11 run function ttt:finale/player_drown