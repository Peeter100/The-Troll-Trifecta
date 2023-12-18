# Run as player thru advancement

execute if entity @s[tag=p100boss] run tag @e[type=marker,tag=sv,limit=1] add canstun
execute at 00000001-0000-0000-0000-000000000000 anchored feet facing entity @s feet as @e[type=marker,tag=sv,limit=1] run function ttt:finale/phase1/boss_hit_server