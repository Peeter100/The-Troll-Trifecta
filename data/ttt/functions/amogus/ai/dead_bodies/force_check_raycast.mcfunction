# thing
# tag @e[type=villager,tag=amogai] remove canseebody
execute unless score @e[type=marker,tag=sv,limit=1] am_sabid matches 3 at @e[type=armor_stand,tag=amogdead] as @e[type=villager,tag=amogai,tag=!canseebody,distance=0..20] at @s run function ttt:amogus/ai/dead_bodies/base_check

execute if score @e[type=marker,tag=sv,limit=1] acttimer matches 3000..3009 run schedule function ttt:amogus/ai/dead_bodies/force_check_raycast 7t replace