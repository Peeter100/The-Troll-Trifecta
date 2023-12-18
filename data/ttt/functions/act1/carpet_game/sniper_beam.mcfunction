scoreboard players set .pointer-range npcbodytp 2
execute as @e[type=armor_stand,tag=sniper,limit=1] at @s anchored eyes positioned ^ ^ ^2 run function ttt:act1/carpet_game/pointer_reddust

execute as @e[type=marker,tag=sv,scores={deathtime=0},limit=1] run function ttt:act1/carpet_game/sniper_beam_tellraw