execute if entity @a[tag=amplayer,distance=..0.3] run tag @s add foundplayer
execute unless entity @s[tag=foundplayer] positioned ^ ^ ^0.25 if block ~ ~ ~ #ttt:passable run function ttt:amogus/minigames/id1/check_player_raycast_loop