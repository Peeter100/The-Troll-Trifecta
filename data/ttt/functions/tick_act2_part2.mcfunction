# ACT-WIDE KILL EVENTS

execute as @a[team=p] at @s if block ~ ~ ~ water run function ttt:act2/water_freeze
execute as @a[team=p] at @s if block ~ ~ ~ pointed_dripstone[waterlogged=true] run function ttt:act2/water_freeze



# BASIC TICK

execute as @a[tag=!testing,team=!s,scores={hp=1..}] at @s if entity @s[x=-1,y=35,z=8,dx=2,dy=1,dz=2] run tp @s -58 16 150
execute as @a[tag=!testing,team=!s] at @s if entity @s[x=-6,y=30,z=-6,dx=13,dy=4,dz=13] run tp @s -58 16 150
effect give @a weakness 99999 0 true
execute as @a[team=p] at @s store result score @s y run data get entity @s Pos[1]

effect clear @a poison


# BRANCHES

execute if entity @s[scores={acttimer=1100..}] run function ttt:clash/tick_outro
execute if entity @s[scores={acttimer=1021..1099}] run function ttt:clash/tick_boss
execute if entity @s[scores={acttimer=950..1020}] run function ttt:clash/tick_preboss
execute if entity @s[scores={acttimer=921..949}] run function ttt:clash/tick_clashing_time
execute if entity @s[scores={acttimer=600..920}] run function ttt:clash/tick_intermission
execute if entity @s[scores={acttimer=535..599}] run function ttt:clash/tick_icing_time
execute if entity @s[scores={acttimer=1..534}] run function ttt:clash/tick_intro